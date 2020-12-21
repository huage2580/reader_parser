import 'package:html/parser.dart' as parser;
import 'package:uuid/uuid.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';

class DSoup {
  static final uuid = Uuid();

  static DElement parse(String htmlString,SoupObjectCache cache) {
    var doc = parser.parse(htmlString);
    return DElement(doc.documentElement,cache);
  }
}
