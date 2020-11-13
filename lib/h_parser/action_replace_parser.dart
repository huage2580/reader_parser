

import 'package:html/dom.dart';
import 'package:test_parse_js_html/h_parser/action_parser.dart';

import 'regexp_rule.dart';

class ActionReplaceParser extends ActionParser{
  ActionReplaceParser(Document document, String htmlString) : super(document, htmlString);

  @override
  String formatRule(String rule) {
    if(rule.startsWith(RegExp('[+-]'))){
      return rule.substring(1);
    }
    return rule;
  }

  @override
  List<Element> getElementsEachRule(String rule, bool needFilterText) {
    throw UnimplementedError();
  }

  @override
  List<String> getStrings(String rule) {
    var result = List<String>();
    var sl = rule.split(RegexpRule.PARSER_TYPE_REG_REPLACE);
    var reg = RegExp(sl[1],multiLine: true);
    var matches = reg.allMatches(mHtmlString);
    var temp = List<String>();
    for(var m in matches){
      temp.add(m.group(0));
    }
    for(var s in temp){
      result.add(replaceWithRule(s, rule));
    }

    return result;
  }

}