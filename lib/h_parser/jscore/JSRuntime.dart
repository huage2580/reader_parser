import 'dart:collection';
import 'dart:convert';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:flutter_jscore/binding/js_context_ref.dart';
import 'package:flutter_jscore/binding/js_object_ref.dart' as jsObject;
import 'package:flutter_jscore/binding/js_string_ref.dart';
import 'package:flutter_jscore/flutter_jscore.dart';
import 'package:flutter_jscore/jscore/js_value.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_element.dart';
import 'package:yuedu_parser/h_parser/dsoup/d_elements.dart';
import 'package:yuedu_parser/h_parser/dsoup/dsoup.dart';
import 'package:yuedu_parser/h_parser/dsoup/soup_object_cache.dart';
import 'package:yuedu_parser/h_parser/h_parser.dart';
import 'package:yuedu_parser/h_parser/jscore/FunctionBinding.dart';
import 'package:yuedu_parser/h_parser/jscore/js_init_script.dart';

class JSRuntime {
  Pointer _contextGroup;
  Pointer _globalContext;
  JSContext context;
  Pointer _globalObject;

  Map<String,JSMethodCall> bindingMethod = HashMap();
  SoupObjectCache _objectCache;

  JSRuntime.init(SoupObjectCache cache) {
    _objectCache = cache;
    _contextGroup = jSContextGroupCreate();
    _globalContext = jSGlobalContextCreateInGroup(_contextGroup, nullptr);
    _globalObject = jSContextGetGlobalObject(_globalContext);
    context = JSContext(_globalContext);
    injectFunction();
    bindingFunction();
    injectClass();
  }

  void injectArgs(Map<String, dynamic> map) {
    //改成普通的脚本执行方式，方便注入elements
    map.forEach((key, value) {
      if(value is DElement){
        evaluate("var $key = new DElement(${value.uid});");
      }else if(value is DElements){
        evaluate("var $key = new DElements(${value.uid});");
      }else{
        evaluate("var $key = `$value`;");
      }
    });
  }


  void injectFunction(){
    // 注册flutter.call方法
    var flutterJSClass = JSClass.create(JSClassDefinition(
      version: 0,
      attributes: JSClassAttributes.kJSClassAttributeNone,
      className: 'flutter',
      staticFunctions: [
        JSStaticFunction(
          name: 'call',
          callAsFunction: Pointer.fromFunction(FunctionBinding.sendMessageBridgeFunction),
          attributes: JSPropertyAttributes.kJSPropertyAttributeNone,
        ),
      ],
      staticValues: [
      ],
    ));
    var flutterJSObject = JSObject.make(context, flutterJSClass);
    context.globalObject.setProperty('flutter', flutterJSObject.toValue(),
        JSPropertyAttributes.kJSPropertyAttributeDontDelete);
  }

  void bindingFunction(){
    FunctionBinding.sendMessageDartFunc = (ctx,function,thisObject,argumentCount,arguments,exception){
      var methodName = JSValue(context, arguments[0]).string;
      print('js want to call [$methodName]');
      if(bindingMethod.containsKey(methodName)){
        var arg1;
        if(argumentCount > 1){
          arg1 = JSValue(context, arguments[1]).string;
        }
        var arg2;
        if(argumentCount > 2){
          var jsValue = JSValue(context, arguments[2]);
          if(jsValue.isObject || jsValue.isArray){
            arg2 = jsValue.createJSONString(null).string;
          }else{
            arg2 = jsValue.string;
          }
        }
        String result = bindingMethod[methodName](argumentCount,arguments,arg1,arg2);
        return result==null?nullptr:JSValue.makeString(context, result).pointer;
      }
      return nullptr;
    };
    _bindingMethods();
  }

  ///绑定的函数，参数和返回都采用String
  void _bindingMethods(){
    //-----------------绑定的调用函数------------------------
    _addBindingMethod('jsoup_parse', (argumentCount, arguments, arg1,arg2){
      var ele = DSoup.parse(arg1,_objectCache);
      return ele.uid;
    });
    //------------------element-------------------
    _addBindingMethod('element_select', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      var eles = that.select(arg2);
      return eles.uid;
    });
    _addBindingMethod('element_selectFirst', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      var ele = that.selectFirst(arg2);
      return ele.uid;
    });
    _addBindingMethod('element_attr', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.attr(arg2);
    });
    _addBindingMethod('element_hasAttr', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.hasAttr(arg2).toString();
    });
    _addBindingMethod('element_hasClass', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.hasClass(arg2).toString();
    });
    _addBindingMethod('element_text', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.text();
    });
    _addBindingMethod('element_html', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.html();
    });
    _addBindingMethod('element_outerHtml', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.outerHtml();
    });
    _addBindingMethod('element_remove', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.remove().uid;
    });
    _addBindingMethod('element_className', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      return that.className();
    });
    _addBindingMethod('element_getElementsByTag', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      var eles = that.getElementsByTag(arg2);
      return eles.uid;
    });
    _addBindingMethod('element_getElementById', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      var ele = that.getElementById(arg2);
      return ele.uid;
    });
    _addBindingMethod('element_getElementsByClass', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElement(arg1);
      var eles = that.getElementsByClass(arg2);
      return eles.uid;
    });
    //------------elements------------------------------
    _addBindingMethod('elements_select', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      var eles = that.select(arg2);
      return eles.uid;
    });
    _addBindingMethod('elements_selectFirst', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      var ele = that.selectFirst(arg2);
      return ele.uid;
    });
    _addBindingMethod('elements_attr', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.attr(arg2);
    });
    _addBindingMethod('elements_hasAttr', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.hasAttr(arg2).toString();
    });
    _addBindingMethod('elements_hasClass', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.hasClass(arg2).toString();
    });
    _addBindingMethod('elements_text', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.text();
    });
    _addBindingMethod('elements_html', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.html();
    });
    _addBindingMethod('elements_outerHtml', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.outerHtml();
    });
    _addBindingMethod('elements_remove', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.remove().uid;
    });
    _addBindingMethod('elements_first', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.first().uid;
    });
    _addBindingMethod('elements_last', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);
      return that.last().uid;
    });
    _addBindingMethod('elements_toArray', (argumentCount, arguments, arg1, arg2){
      var that = _objectCache.getElements(arg1);

      var r = that.toArray().map((e) => e.uid);
      var result = '[${r.map((e) => '"$e"').join(',')}]';
      return result;
    });
    //-------------------------JAVA-------------------------
    _addBindingMethod('java_get', (argumentCount, arguments, arg1, arg2){
      return _objectCache.get(arg1).toString();
    });
    _addBindingMethod('java_put', (argumentCount, arguments, arg1, arg2){
      _objectCache.put(arg1, arg2);
      return null;
    });
    //fixme 网络请求没办法做，要自己实现一套sync的http，支持https。
    // _addBindingMethod('java_ajax', (argumentCount, arguments, arg1, arg2){
    //   //丑陋的网络请求
    //   Future.delayed(Duration(milliseconds: 10),()async{
    //     try{
    //       var rsp = await Dio(BaseOptions(responseType: ResponseType.plain,connectTimeout: 5000)).get(arg1);
    //       var response = rsp.data;
    //       print('response-> $response');
    //       _objectCache.put(arg1, response);
    //     }catch(e){
    //       _objectCache.put(arg1, 'error');
    //     }
    //   });
    //   return arg1;
    // });
    //
    // _addBindingMethod('java_ajax_query', (argumentCount, arguments, arg1, arg2){
    //   //丑陋的网络请求
    //   var temp = _objectCache.get(arg1);
    //   return temp??'';
    // });
    _addBindingMethod('java_getElements', (argumentCount, arguments, arg1, arg2){
      var hparser = HParser(_objectCache.get('html_string'));
      hparser.objectCache = _objectCache;
      var eles = hparser.parseRuleElements(arg1);
      return DElements(eles, _objectCache).uid;
    });
    _addBindingMethod('java_getString', (argumentCount, arguments, arg1, arg2){
      var hparser = HParser(_objectCache.get('html_string'));
      hparser.objectCache = _objectCache;
      var str = hparser.parseRuleString(arg1);
      return str;
    });
    _addBindingMethod('java_getStringList', (argumentCount, arguments, arg1, arg2){
      var hparser = HParser(_objectCache.get('html_string'));
      hparser.objectCache = _objectCache;
      var strlist = hparser.parseRuleStrings(arg1);
      var result = '[${strlist.map((e) => '"$e"').join(',')}]';
      return result;
    });
    _addBindingMethod('java_base64Encode', (argumentCount, arguments, arg1, arg2){
      var content = utf8.encode(arg1);
      return base64Encode(content);
    });
    _addBindingMethod('java_base64Decode', (argumentCount, arguments, arg1, arg2){
      return String.fromCharCodes(base64Decode(arg1));
    });
    



  }

  void injectClass(){
    evaluate(JsInitScript.JSOUP_CLASS);
  }

  dynamic _generateJsString(String string) {
    Pointer<Utf8> nameCString = Utf8.toUtf8(string);
    return jSStringCreateWithUTF8CString(nameCString);
  }
  
  void _addBindingMethod(String methodName,JSMethodCall methodCall){
    bindingMethod[methodName] = methodCall;
  }


  void destroy() {
    context.release();
    // _objectCache.destroy();
  }

  JSValue evaluate(String script) {
    var jsvalue = context.evaluate(script);
    var exceptionValue = context.exception.getValue(context);
    if(exceptionValue.isObject){
      print('JS_ERROR: ${exceptionValue.string}');
    }
    return jsvalue;
  }


}
