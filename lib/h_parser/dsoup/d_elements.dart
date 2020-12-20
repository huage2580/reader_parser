import 'package:html/dom.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';
import 'package:yuedu_parser/h_parser/dsoup/dsoup.dart';

class DElements {
  String uid;
  List<Element> elements;

  DElements(this.elements) {
    this.uid = DSoup.uuid.v1();
  }

  DElements select(String query) {}

  DElement selectFirst(String query) {}

  String attr(String attributeKey) {}

  bool hasAttr(String attributeKey) {}

  bool hasClass(String className) {}

  String text() {}

  bool hasText() {}

  String html() {}

  String outerHtml() {}

  DElements before(String html) {}

  DElements after(String html) {}

  DElements remove() {}

  DElement first() {}

  DElement last() {}

  List<DElement> toArray() {}

  @override
  String toString() {
    return outerHtml();
  }
}
