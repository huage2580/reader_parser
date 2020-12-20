import 'package:html/parser.dart' as parser;
import 'package:uuid/uuid.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';

class DSoup {
  static final uuid = Uuid();

  static DElement parse(String htmlString) {
    var doc = parser.parse(htmlString);
    return DElement(doc.documentElement);
  }
}
