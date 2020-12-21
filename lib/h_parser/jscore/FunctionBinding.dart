

import 'dart:ffi';

import 'package:flutter_jscore/binding/js_object_ref.dart';

typedef JSMethodCall = String Function(int argumentCount, Pointer<Pointer> arguments,String arg1,String arg2);

class FunctionBinding{

  static JSObjectCallAsFunctionCallbackDart sendMessageDartFunc;

  static Pointer sendMessageBridgeFunction(
      Pointer ctx,
      Pointer function,
      Pointer thisObject,
      int argumentCount,
      Pointer<Pointer> arguments,
      Pointer<Pointer> exception) {
    if(sendMessageDartFunc!=null){
      return sendMessageDartFunc(ctx,function,thisObject,argumentCount,arguments,exception);
    }
    return nullptr;
  }

}