import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:yuedu_parser/h_parser/action_css_parser.dart';
import 'package:yuedu_parser/h_parser/action_jsoup_parser.dart';
import 'package:yuedu_parser/h_parser/action_parser.dart';
import 'package:yuedu_parser/h_parser/action_regexp_parser.dart';
import 'package:yuedu_parser/h_parser/action_replace_parser.dart';
import 'package:yuedu_parser/h_parser/action_xpath_parser.dart';

import 'regexp_rule.dart';

///
///解析网页内容
///

class HParser {
  Document _document;
  String _htmlString;

  HParser(String htmlString){
    _htmlString = htmlString;
  }

  List<Element> parseRuleElements(String rule){
    ActionParser actionParser = _factory(rule);
    return actionParser.getElements(rule,false);
  }

  Element parseRuleElement(String rule){
    ActionParser actionParser = _factory(rule);
    var temp = actionParser.getElements(rule,false);
    return temp.isNotEmpty?temp[0]:null;
  }

  List<String> parseRuleStrings(String rule){
    ActionParser actionParser = _factory(rule);
    return actionParser.getStrings(rule);
  }

  String parseRuleString(String rule){
    var result = "";
    ActionParser actionParser = _factory(rule);
    var temp = actionParser.getStrings(rule);
    for(var s in temp){
      result += s;
    }
    return result;
  }




  ActionParser _factory(String rule){
    ActionParser actionParser;
    //先过滤和指定解析方式
    if(RegExp(RegexpRule.PARSER_TYPE_JS).hasMatch(rule)){
      throw Exception("不支持js语法");
    }
    if(rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_CSS))){
      _document = parse(_htmlString);
      actionParser = ActionCssParser(_document,_htmlString);
    }else if(rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_REGEXP))){
      actionParser = ActionRegexpParser(_document,_htmlString);
    }
    else if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_REG_REPLACE))) {
      actionParser = ActionReplaceParser(_document, _htmlString);
    }
    else if (rule.startsWith(RegExp(RegexpRule.PARSER_TYPE_XPATH))) {
      _document = parse(_htmlString);
      actionParser = ActionXPathParser(_document, _htmlString);
    }
    else {
      //默认解析
      _document = parse(_htmlString);
      actionParser = ActionJsoupParser(_document, _htmlString);
    }
    return actionParser;
  }


}