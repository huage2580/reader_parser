


class JsInitScript{
  static const String JSOUP_CLASS = '''


//--------------element---------------------
function DElement(uid){
    this.uid = uid;
    this.type = 'DElement';
    this.select = function(cssQuery){
        var elementsUid = flutter.call('element_select',this.uid,cssQuery);
        return new DElements(elementsUid);
    };
    this.selectFirst = function(cssQuery){
        var elementUid = flutter.call('element_selectFirst',this.uid,cssQuery);
        return new DElement(elementUid);
    };
    this.attr = function(attrKey){
        return flutter.call('element_attr',this.uid,attrKey);
    };
    this.hasAttr = function(attrKey){
        return flutter.call('element_hasAttr',this.uid,attrKey) == 'true';
    };
    this.hasClass = function(className){
        return flutter.call('element_hasClass',this.uid,className) == 'true';
    };
    this.text = function(){
        return flutter.call('element_text',this.uid);
    };
    this.html = function(){
        return flutter.call('element_html',this.uid);
    };
    this.outerHtml = function(){
        return flutter.call('element_outerHtml',this.uid);
    };
    this.remove = function(){
        flutter.call('element_remove',this.uid);
        return this;
    };
    this.className = function(){
        return flutter.call('element_className',this.uid);
    };
    this.getElementsByTag = function(tagName){
        var elementsUid = flutter.call('element_getElementsByTag',this.uid,tagName);
        return new DElements(elementsUid);
    };
    this.getElementById = function(id){
        var elementUid = flutter.call('element_getElementById',this.uid,id);
        return new DElement(elementUid);
    };
    this.getElementsByClass = function(className){
        var elementsUid = flutter.call('element_getElementsByClass',this.uid,className);
        return new DElements(elementsUid);
    };


}

//--------------elements--------------------
function DElements(uid){
    this.uid = uid;
    this.type = 'DElements';
    this.select = function(cssQuery){
        var elementsUid = flutter.call('elements_select',this.uid,cssQuery);
        return new DElements(elementsUid);
    };
    this.selectFirst = function(cssQuery){
        var elementUid = flutter.call('elements_selectFirst',this.uid,cssQuery);
        return new DElement(elementUid);
    };
    this.attr = function(attrKey){
        return flutter.call('elements_attr',this.uid,attrKey);
    };
    this.hasAttr = function(attrKey){
        return flutter.call('elements_hasAttr',this.uid,attrKey) == 'true';
    };
    this.hasClass = function(className){
        return flutter.call('elements_hasClass',this.uid,className) == 'true';
    };
    this.text = function(){
        return flutter.call('elements_text',this.uid);
    };
    this.html = function(){
        return flutter.call('elements_html',this.uid);
    };
    this.outerHtml = function(){
        return flutter.call('elements_outerHtml',this.uid);
    };
    this.remove = function(){
        flutter.call('elements_remove',this.uid);
        return this;
    };
    this.first = function(){
        var eleUid = flutter.call('elements_first',this.uid);
        return new DElement(eleUid);
    }
    this.last = function(){
        var eleUid = flutter.call('elements_last',this.uid);
        return new DElement(eleUid);
    }
    this.toArray = function(){
        var listStr = flutter.call('elements_toArray',this.uid);
        var idArrays = JSON.parse(listStr);
        return idArrays.map((item)=>{
            return new DElement(item);
        });
    }

}



//--------org.jsoup.Jsoup.parse-------------

function orgClass(){
    this.jsoup = new jsoupClass();
}

function jsoupClass(){
    this.Jsoup = new JsoupClass(); 
}

function JsoupClass(){
    this.parse = function(html){
        var uid = flutter.call('jsoup_parse',html);
        if(uid == undefined){
            return null;
        }
        return new DElement(uid);
    }
}

var org = new orgClass();



//-------------------------------------------

//----------------java-------------------
function javaClass(){
    this.get = function(k){
        return flutter.call('java_get',k);
    };
    this.put = function(k,v){
        flutter.call('java_put',k,v);
    };
    this.ajax = function(url){
        flutter.call('java_ajax',url);
        var temp = '';
        while(temp.length == 0){
            sleep(20);
            temp = flutter.call('java_ajax_query',url);
        }
        return temp;
    };
    this.getElements = function(query){
        var eid = flutter.call('java_getElements',query);
        return new DElements(eid);
    };
    this.getString = function(query){
        return flutter.call('java_getString',query);
    };
    this.getStringList = function(query){
        var listStr = flutter.call('java_getStringList',query);
        var strArrays = JSON.parse(listStr);
    };
    this.base64Encode = function(s){
        return flutter.call('java_base64Encode',s);
    };
    this.base64Decode = function(s){
        return flutter.call('java_base64Decode',s);
    };
}
var java = new javaClass();

//---------------------------------------

  ''';
}