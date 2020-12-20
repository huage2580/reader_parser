import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_elements.dart';
import 'package:yuedu_parser/h_parser/dsoup/dsoup.dart';

class DElement {
  String uid;
  Element element;

  DElement(this.element) {
    this.uid = DSoup.uuid.v1();
  }

  DElements select(String cssQuery) {
    return DElements(element.querySelectorAll(cssQuery));
  }

  DElement selectFirst(String query) {}

  String attr(String attributeKey) {}

  bool hasAttr(String attributeKey) {}

  bool hasClass(String className) {}

  String text() {}

  bool hasText() {}

  String html() {}

  String outerHtml() {}

  DElement before(String html) {}

  DElement after(String html) {}

  DElement remove() {}

  String className() {}

  DElements getElementsByTag(String tagName) {}

  DElement getElementById(String id) {}

  DElements getElementsByClass(String className) {}

  DElements getElementsByAttribute(String key) {}

  DElements getElementsByAttributeValue(String key, String value) {}

  @override
  String toString() {
    return text();
  }
}
