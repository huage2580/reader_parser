import 'dart:convert';

import 'package:flutter_jscore/flutter_jscore.dart';
import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_elements.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';
import 'package:yuedu_parser/h_parser/jscore/JSRuntime.dart';

import '../regexp_rule.dart';

abstract class ActionParser {
  Document mDocument;
  String mHtmlString;
  SoupObjectCache _objectCache;
  Map<String,dynamic> _injectArgs;

  var jsActionAtStr;//@js的脚本
  var ruleWithoutReplace = "";
  var replaceRegexp = "";
  var needReverse = false;

  ActionParser(Document document,String htmlString){
    mDocument = document;
    mHtmlString = htmlString;
  }


  set injectArgs(Map<String, dynamic> value) {
    _injectArgs = value;
  }

  set objectCache(SoupObjectCache value) {
    _objectCache = value;
  }

  /// 只处理倒叙，组合操作符，切割规则以后，交由继承类实现
  /// [rule] 总规则
  /// [needFilterText] 在获取文本内容的时候，开启过滤和净化操作,基本表示获取文本
  List<Element> getElements(String rule,bool needFilterText){
    //0 要不要倒叙
    if(rule.startsWith('-')){
      needReverse = true;
    }
    ruleWithoutReplace = formatRule(rule);

    //0 先去掉@js规则,和<js></js>最后一个规则

    //先过滤@JS：，肯定是最后一个
    var jsIndex = ruleWithoutReplace.indexOf(RegexpRule.PARSER_ACTION_JS);
    if(jsIndex != -1){
      jsActionAtStr = ruleWithoutReplace.substring(jsIndex+4);
      ruleWithoutReplace = ruleWithoutReplace.substring(0,jsIndex).replaceAll('\n', '');
    }
    jsIndex = ruleWithoutReplace.indexOf(RegexpRule.EXPRESSION_JS_TOKEN);
    if(jsIndex != -1){
      jsActionAtStr = ruleWithoutReplace.substring(jsIndex+4,ruleWithoutReplace.length-5);
      ruleWithoutReplace = ruleWithoutReplace.substring(0,jsIndex).replaceAll('\n', '');
    }

    //1 先去掉最后的净化
    var replaceIndex = ruleWithoutReplace.indexOf(RegexpRule.PARSER_TYPE_REG_REPLACE);
    if(replaceIndex > 0){
      replaceRegexp = ruleWithoutReplace.substring(replaceIndex);
      ruleWithoutReplace = ruleWithoutReplace.substring(0,replaceIndex);
    }

    //2 切割组合条件
    var ruleEach = [];
    var op_mode = "";
    if (ruleWithoutReplace.indexOf(RegexpRule.OPERATOR_AND) > 0){
      op_mode = RegexpRule.OPERATOR_AND;
      var temp = ruleWithoutReplace.split(RegexpRule.OPERATOR_AND);
      ruleEach.addAll(temp);
    }
    if (ruleWithoutReplace.indexOf(RegexpRule.OPERATOR_OR) > 0){
      op_mode = RegexpRule.OPERATOR_OR;
      var temp = ruleWithoutReplace.split(RegexpRule.OPERATOR_OR);
      ruleEach.addAll(temp);
    }
    if (ruleWithoutReplace.indexOf(RegexpRule.OPERATOR_MERGE) > 0){
      op_mode = RegexpRule.OPERATOR_MERGE;
      var temp = ruleWithoutReplace.split(RegexpRule.OPERATOR_MERGE);
      ruleEach.addAll(temp);
    }
    if(ruleEach.isEmpty){// 不包含操作符
      ruleEach.add(ruleWithoutReplace);
    }

    var resultCombinationList = List<List<Element>>();
    //每条规则单独执行
    for(String rule in ruleEach){
      //子类实现获取数据,过滤和替换内容也交给之类实现
      List<Element> elements_per = rule.isNotEmpty?getElementsEachRule(rule,needFilterText):List();
      resultCombinationList.add(elements_per);
      if(elements_per.isNotEmpty && op_mode == RegexpRule.OPERATOR_OR){//中断获取数据
        break;
      }
    }
    //开始根据操作符合并结果

    //合并后的数据集
    var mergeElements = List<Element>();

    if(op_mode == RegexpRule.OPERATOR_MERGE){
      //依次合并
      if(resultCombinationList.isNotEmpty){
        var hasNext = true;
        while(hasNext){
          var tnext = false;
          for(var x in resultCombinationList){
            if(x.isNotEmpty){
              var e = x.removeAt(0);
              mergeElements.add(e);
            }
            tnext = tnext || x.isNotEmpty;
          }
          hasNext = tnext;
        }
      }
    }else{//顺序组合
      for(var x in resultCombinationList){
        mergeElements.addAll(x);
      }
    }

    //@js脚本的执行----------
    if(jsActionAtStr!=null && !needFilterText){
      //js获得结果集
      mergeElements = jsActionForElements(jsActionAtStr, mergeElements.isEmpty?mHtmlString:mergeElements);
    }

    //反转列表
    var resultList = List<Element>();
    if(needReverse){
      resultList.addAll(mergeElements.reversed);
    }else{
      resultList.addAll(mergeElements);
    }
    return resultList;
  }

  List<Element> jsActionForElements(String jsScript,dynamic result){
    if(jsScript == null){
      return [];
    }
    if(result == null || result.isEmpty){
      return [];
    }
    var jsRuntime = JSRuntime.init(_objectCache);
    if(_injectArgs == null){
      _injectArgs = {};
    }
    if(result is List){
      _injectArgs['result'] = DElements(result,_objectCache);
    }
    if(result is String){
      _injectArgs['result'] = result;
    }
    jsRuntime.injectArgs(_injectArgs);
    JSValue jsValue = jsRuntime.evaluate(jsScript);
    //返回的是数组，或者Delements
    if(jsValue.isObject){
      String serialized = jsValue.createJSONString(null).string;
      Map map = jsonDecode(serialized);
      if(map.containsKey('uid')){
        var temp =  _objectCache.getElements(map['uid']).elements;
        jsRuntime.destroy();
        return temp;
      }
    }
    if(jsValue.isArray){
      List<Element> eles = [];
      String serialized = jsValue.createJSONString(null).string;
      List<Map> maps = jsonDecode(serialized);
      for (var value in maps) {
        if(value.containsKey('uid')){
          eles.add(_objectCache.getElement(value['uid']).element);
        }else{//普通数组，填充属性
          var temp = Element.tag('js_array');
          temp.attributes = value;
          eles.add(temp);
        }
      }
      return eles;
    }
  }

  String jsActionForString(String result,String jsScript){
    if(jsScript == null){
      return result;
    }
    var jsRuntime = JSRuntime.init(_objectCache);
    if(_injectArgs == null){
      _injectArgs = {};
    }
    _injectArgs['result'] = result;
    jsRuntime.injectArgs(_injectArgs);
    JSValue jsValue = jsRuntime.evaluate(jsScript);
    jsRuntime.destroy();
    return jsValue.string;
  }

  /// 得到规则的结果集合，一条规则可以有操作符，切割成 多条结果集
  List<Element> getElementsEachRule(String rule,bool needFilterText);

  List<String> getStrings(String rule);

  ///去掉标示和倒叙的字符串 头
  String formatRule(String rule);

  Element filterText(Element element,String type,String replace){
    if(type == "" && replace == ""){
      return element;
    }
    if(element == null){
      return element;
    }
    var text = "";
    //内容过滤
    if(type == RegexpRule.FILTER_TEXT){
      text = element.text.trim();
    }else if(type == RegexpRule.FILTER_OWN_TEXT){
      if(element.hasChildNodes()){
        var cNodes = element.nodes;
        for(var c in cNodes){
          if(c.nodeType == Node.TEXT_NODE){
            text += c.text.trim();
          }
        }
      }
    }
    else if(type == RegexpRule.FILTER_TEXT_NODE){ //主要多了个换行
      var cNodes = element.nodes;
      for(var c in cNodes){
        if(c.nodeType == Node.TEXT_NODE){
          text += c.text.trim();
          text += "\n";
        }
      }
    }
    else if(type == RegexpRule.FILTER_HTML){

      element.querySelectorAll("script").forEach((child) {
        child.remove();
      });
      element.querySelectorAll("style").forEach((child) {
        child.remove();
      });
      //<br>标签手动换行,这解析丢失了标签
      element.querySelectorAll('br').forEach((child) {
        child.text = '\n';
      });
      text = element.text;
    }
    else if(type == RegexpRule.FILTER_ALL){
      text = element.innerHtml;
    }else{
      text = element.attributes[type];
    }
    //正则替换内容
    text = replaceWithRule(text,replace);
    element.text = text;

    return element;
  }

  static String replaceWithRule(String input,String rule){
    var text = input;
    //净化替换
    if(rule!= "" && rule.startsWith(RegexpRule.PARSER_TYPE_REG_REPLACE)){
      var sl = rule.split(RegexpRule.PARSER_TYPE_REG_REPLACE);
      if(sl.length <= 1){
        throw Exception("无法解析的替换规则->$rule");
        return text;
      }

      var _groupFunction = (m){
        // 替换$1之类的数据
        var f_str = sl[2];
        var group_reg = RegExp(RegexpRule.REGEXP_GROUP);
        f_str = f_str.replaceAllMapped(group_reg, (match) => m.group(int.parse(match.group(1))));
        return f_str;
      };

      var regexp = RegExp(sl[1],multiLine: true);
      if(sl.length == 2){
        text = input.replaceAll(regexp, '');
      }else if(sl.length == 3){
        text = input.replaceAllMapped(regexp, _groupFunction);
      }else if(sl.length == 4){
        text = input.replaceFirstMapped(regexp,_groupFunction);
      }
    }
    return text;
  }

  int negativeGetIndex(int size,int nIndex){
    if(nIndex >= 0){
      return nIndex;
    }
    return size + nIndex;
  }

}