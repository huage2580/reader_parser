import 'package:yuedu_parser/h_parser/dsoup/d_elements.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';

class SoupObjectCache{
  var _cache = Map<String,dynamic>();

  dynamic get(String uid){
    return _cache[uid];
  }

  DElements getElements(String uid){
    return _cache[uid];
  }

  DElement getElement(String uid){
    return _cache[uid];
  }

  void putElements(DElements elements){
    _cache[elements.uid] = elements;
  }

  void putElement(DElement element){
    _cache[element.uid] = element;
  }

  void put(String key,String value){
    _cache[key] = value;
  }

  void destroy(){
    _cache.clear();
  }
}