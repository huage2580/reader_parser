import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';
import 'package:yuedu_parser/h_parser/dsoup/dsoup.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';

class DElements {
  String uid;
  List<Element> elements;
  SoupObjectCache objectCache;

  DElements(this.elements,SoupObjectCache objectCache) {
    this.uid = DSoup.uuid.v1();
    this.objectCache = objectCache;
    objectCache.putElements(this);
  }

  DElements select(String query) {
    var result = List<Element>();
    for (var value in elements) {
      var queryResult = value.querySelectorAll(query);
      if(queryResult!=null && queryResult.isNotEmpty){
        result.addAll(queryResult);
      }
    }
    return DElements(result, objectCache);
  }

  DElement selectFirst(String query) {
    for (var value in elements) {
      var result = value.querySelector(query);
      if(result!=null){
        return DElement(result,objectCache);
      }
    }
    return null;
  }

  String attr(String attributeKey) {
    for (var value in elements) {
      if(value.attributes.containsKey(attributeKey)){
        return value.attributes[attributeKey];
      }
    }
    return null;
  }

  bool hasAttr(String attributeKey) {
    for (var value in elements) {
      if(value.attributes.containsKey(attributeKey)){
        return true;
      }
    }
    return false;
  }

  bool hasClass(String className) {
    for (var value in elements) {
      if(value.classes.contains(className)){
        return true;
      }
    }
    return false;
  }

  String text() {
    String result = '';
    for (var value in elements) {
      result+=value.text;
    }
    return result;
  }


  String html() {
    String result = '';
    for (var value in elements) {
      result+=value.text;
      result+='\n';
    }
    return result;
  }

  String outerHtml() {
    String result = '';
    for (var value in elements) {
      result+=value.outerHtml;
      result+='\n';
    }
    return result;
  }

  DElements remove() {
    for (var value in elements) {
      value.remove();
    }
    return this;
  }

  DElement first() {
    if(elements.isNotEmpty){
      return DElement(elements.first, objectCache);
    }
    return null;
  }

  DElement last() {
    if(elements.isNotEmpty){
      return DElement(elements.last, objectCache);
    }
    return null;
  }

  List<DElement> toArray() {
    var result = List<DElement>();
    for (var value in elements) {
      result.add(DElement(value, objectCache));
    }
    return result;
  }

  @override
  String toString() {
    return outerHtml();
  }
}
