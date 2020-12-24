import 'package:html/dom.dart';

import '../regexp_rule.dart';
import 'action_parser.dart';

class ActionRegexpParser extends ActionParser {
  ActionRegexpParser(Element element, String htmlString)
      : super(element, htmlString);


  @override
  String formatRule(String rule) {
    return rule.replaceFirst(RegExp(RegexpRule.PARSER_TYPE_REGEXP), "");
  }

  @override
  List<Element> getElementsEachRule(String rule, bool needFilterText) {

    //href=\"(/read[^\"]*html)\">([^<]*)
    List<Element> result = List<Element>();

    var reg = RegExp(rule,multiLine: true);
    var matches = reg.allMatches(mHtmlString);
    for(var m in matches){
      var element = Element.tag('regexp');
      element.text = m.group(0);
      for(var i = 1;i<=m.groupCount;i++){
        element.attributes["\$$i"] = m.group(i);
      }
      result.add(element);
    }
    return result;
  }

  @override
  List<String> getStrings(String rule) {
    // TODO: implement getStrings
    throw UnimplementedError();
  }

}