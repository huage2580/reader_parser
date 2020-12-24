import 'package:html/dom.dart';

import '../regexp_rule.dart';
import 'action_parser.dart';

class ActionReplaceParser extends ActionParser {
  ActionReplaceParser(Element element, String htmlString)
      : super(element, htmlString);


  @override
  String formatRule(String rule) {
    if (rule.startsWith(RegExp(RegexpRule.PARSER_DIRECTION))) {
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
      result.add(ActionParser.replaceWithRule(s, rule));
    }

    return result;
  }

}