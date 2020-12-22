import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';
import 'package:yuedu_parser/h_parser/regexp_rule.dart';

import 'action/action_css_parser.dart';
import 'action/action_jsoup_parser.dart';
import 'action/action_parser.dart';
import 'action/action_regexp_parser.dart';
import 'action/action_replace_parser.dart';
import 'action/action_xpath_parser.dart';
import 'regexp_rule.dart';

///
///解析网页内容
///

class HParser {
  Document _document;
  String _htmlString;

  SoupObjectCache _objectCache;
  Map<String,dynamic> _injectArgs;


  HParser(String htmlString){
    _htmlString = htmlString;
  }

  List<Element> parseRuleElements(String rule){
    if(rule == null || rule.isEmpty){
      return null;
    }
    ActionParser actionParser = _factory(rule);
    return actionParser.getElements(rule,false);
  }

  Element parseRuleElement(String rule){
    if(rule == null || rule.isEmpty){
      return null;
    }
    ActionParser actionParser = _factory(rule);
    var temp = actionParser.getElements(rule,false);
    return temp.isNotEmpty?temp[0]:null;
  }

  List<String> parseRuleStrings(String rule){
    if(rule == null || rule.isEmpty){
      return null;
    }
    ActionParser actionParser = _factory(rule);
    var results = actionParser.getStrings(rule);
    results.map((e) => actionParser.jsActionForString(e,actionParser.jsActionAtStr));
    return results;
  }

  String parseRuleString(String rule){
    if(rule == null || rule.isEmpty){
      return null;
    }
    ActionParser actionParser = _factory(rule);
    var temp = actionParser.getStrings(rule);
    var result = temp.join('\n');
    result = actionParser.jsActionForString(result,actionParser.jsActionAtStr);
    return result;
  }

  String parseReplaceRule(String rule){
    return ActionParser.replaceWithRule(_htmlString, rule);
  }


  set objectCache(SoupObjectCache value) {
    _objectCache = value;
  }


  set injectArgs(Map<String, dynamic> value) {
    _injectArgs = value;
  }

  ActionParser _factory(String rule){
    ActionParser actionParser;
    //先过滤和指定解析方式
    // if (RegExp(RegexpRule.PARSER_TYPE_JS).hasMatch(rule)) {
    //   throw Exception("不支持js语法->$rule");
    // }
    // if (rule.contains(RegexpRule.EXPRESSION_JS_TOKEN)) {
    //   throw Exception("不支持js表达式->$rule");
    // }
    if (RegExp(RegexpRule.PARSER_TYPE_JSON).hasMatch(rule)) {
      //我发现大多使用json的都是抓的app接口，需要配合js引擎执行一些代码，
      // 计划中不包含JS执行引擎
      throw Exception("不支持json语法->$rule");
    }

    //-------------分派解析器---------------
    if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_CSS))) {
      _document = parse(_htmlString);
      actionParser = ActionCssParser(_document, _htmlString);
    } else if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_REGEXP))) {
      actionParser = ActionRegexpParser(_document, _htmlString);
    } else if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_REG_REPLACE))) {
      actionParser = ActionReplaceParser(_document, _htmlString);
    } else if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_XPATH))) {
      _document = parse(_htmlString);
      actionParser = ActionXPathParser(_document, _htmlString);
    }
    else {
      //默认解析
      _document = parse(_htmlString);
      actionParser = ActionJsoupParser(_document, _htmlString);
    }
    actionParser.objectCache = _objectCache;
    actionParser.injectArgs = _injectArgs;
    return actionParser;
  }




}