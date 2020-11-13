import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/regexp_rule.dart';
import 'package:yuedu_parser/h_parser/xpath/xpath_selector.dart';

import '../regexp_rule.dart';
import 'action_parser.dart';

class ActionXPathParser extends ActionParser {
  ActionXPathParser(Document document, String htmlString)
      : super(document, htmlString);

  @override
  String formatRule(String rule) {
    var temp = rule;
    if (rule.startsWith(RegExp(RegexpRule.PARSER_DIRECTION))) {
      temp = rule.substring(1);
    }
    temp = temp.replaceFirst("@XPath:", '');
    return temp;
  }

  @override
  List<Element> getElementsEachRule(String rule, bool needFilterText) {
    var result = List<Element>();
    var temp = XPath(mDocument.documentElement).query(rule);
    if (needFilterText) {
      var strList = temp.list();
      for (var str in strList) {
        var element = Element.tag('xpath');
        element.text = replaceWithRule(str, replaceRegexp);
        result.add(element);
      }
    } else {
      result.addAll(temp.elements());
    }
    return result;
  }

  @override
  List<String> getStrings(String rule) {
    var result = List<String>();
    var temp = getElements(rule, true);
    for (var value in temp) {
      result.add(value.text);
    }
    return result;
  }
}
