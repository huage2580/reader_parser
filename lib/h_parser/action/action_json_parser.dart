
import 'dart:convert';

import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/action/action_parser.dart';
import 'package:json_path/json_path.dart';

class ActionJsonParser extends ActionParser{
  ActionJsonParser(Element element, String htmlString) : super(element, htmlString){
  super.mHtmlString = htmlString.replaceAll(r'<json>', '').replaceAll(r'</json>', '');
  }

  @override
  String formatRule(String rule) {
    if(rule.startsWith('@JSon')||rule.startsWith('@json')){
      return rule.substring(6);
    }
    return rule;
  }

  @override
  List<Element> getElementsEachRule(String rule, bool needFilterText) {
    try{
      var result = List<Element>();
      var temp =  JsonPath(rule).read(jsonDecode(mHtmlString)).toList();
      for (var value in temp) {
        var t = value.value;
        if(t is List){
          t.forEach((element) {
            var e = Element.tag('json');
            e.text = jsonEncode(element);
            result.add(e);
          });
        }
        else if(t is String){
          var e = Element.tag('json');
          e.text = t.toString();
          result.add(e);
        }
        else if(t is num){
          var e = Element.tag('json');
          e.text = t.toString();
          result.add(e);
        }
        else if(t is bool){
          var e = Element.tag('json');
          e.text = t.toString();
          result.add(e);
        }
        else{
          var e = Element.tag('json');
          e.text = jsonEncode(t);
          result.add(e);
        }
      }
      return result;

    }catch(e){
      print(e);
      return List<Element>();
    }
  }

  @override
  List<String> getStrings(String rule) {
    return getElements(rule, true).map((e) => e.text).toList();
  }
  
}