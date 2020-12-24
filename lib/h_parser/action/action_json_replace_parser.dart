
import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/action/action_parser.dart';
import 'package:yuedu_parser/h_parser/h_parser.dart';
import 'package:yuedu_parser/h_parser/regexp_rule.dart';


class ActionJsonReplaceParser extends ActionParser{

  ActionJsonReplaceParser(Element element, String htmlString)
      : super(element, htmlString);


  @override
  String formatRule(String rule) {
    if(rule.startsWith('@JSon')||rule.startsWith('@json')){
      return rule.substring(6);
    }
    return rule;
  }

  @override
  List<Element> getElementsEachRule(String rule, bool needFilterText) {
    var text = Element.tag('json');
    text.text = jsonReplace(rule);
    return [text];
  }

  @override
  List<String> getStrings(String rule) {
    return getElements(rule, true).map((e) => e.text).toList();
  }

  String jsonReplace(String ruleInput){
    String parse(String input) {
      if(input == null || input.trim().isEmpty){
        return input;
      }
      var regexp = RegExp(RegexpRule.EXP_MATCH);
      var mapper = (Match match) {
        var expression = match.group(1);
        return HParser(mHtmlString).parseRuleString(expression);
      };
      return input.replaceAllMapped(regexp, mapper);
    }
    return parse(ruleInput);
  }

}