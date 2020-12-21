import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_elements.dart';
import 'package:yuedu_parser/h_parser/dsoup/dsoup.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';

class DElement {
  String uid;
  Element element;
  SoupObjectCache objectCache;
  DElement(this.element,SoupObjectCache objectCache) {
    this.uid = DSoup.uuid.v1();
    this.objectCache = objectCache;
    objectCache.putElement(this);
  }

  DElements select(String cssQuery) {
    return DElements(element.querySelectorAll(cssQuery),objectCache);
  }

  DElement selectFirst(String query) {
    return DElement(element.querySelector(query),objectCache);
  }

  String attr(String attributeKey) {
    return element.attributes[attributeKey];
  }

  bool hasAttr(String attributeKey) {
    return element.attributes.containsKey(attributeKey);
  }

  bool hasClass(String className) {
    return element.classes.contains(className);
  }

  String text() {
    return element.text;
  }

  String html() {
    element.querySelectorAll("script").forEach((child) {
      child.remove();
    });
    element.querySelectorAll("style").forEach((child) {
      child.remove();
    });
    //<br>标签手动换行
    element.querySelectorAll('br').forEach((child) {
      child.text = '\n';
    });
    return element.text;
  }

  String outerHtml() {
    return element.outerHtml;
  }

  DElement remove() {
    element.remove();
    return this;
  }

  String className() {
    return element.className;
  }

  DElements getElementsByTag(String tagName) {
    return DElements(element.getElementsByTagName(tagName), objectCache);
  }

  DElement getElementById(String id) {
    return DElement(element.querySelector('#$id'), objectCache);
  }

  DElements getElementsByClass(String className) {
    return DElements(element.getElementsByClassName(className), objectCache);
  }

  @override
  String toString() {
    return 'Delement{uid:$uid}\n${element.outerHtml}';
  }
}
