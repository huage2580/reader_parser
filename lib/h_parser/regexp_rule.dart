
///正则和一些匹配的常量
class RegexpRule{
  static const String PARSER_TYPE_CSS = "[-+]?@css:";
  static const String PARSER_TYPE_JSON = r"[-+]?@JSon:|[-+]?@json:|\$\.";
  static const String PARSER_TYPE_XPATH = r"[-+]?@XPath:|//";
  static const String PARSER_TYPE_REGEXP = "[-+]?:"; //正则之AllInOne
  static const String PARSER_TYPE_REG_REPLACE = "##"; //正则替换内容

  static const String PARSER_DIRECTION = r"[-+]";

  static const String PARSER_ACTION_JS = "@js:";
  static const String EXPRESSION_JS_TOKEN = '<js>';
  static const String EXPRESSION_JS_TOKEN_CLOSE = r'</js>';

  static const String JS_SPLIT = r'<js>(.*)</js>';

  static const String OPERATOR_AND = "&&";
  static const String OPERATOR_OR = "||";
  static const String OPERATOR_MERGE = "%%";
  static const String DELIMITER = "@";

  static const String FILTER_TEXT = "text";
  static const String FILTER_TEXT_NODE = "textNodes";
  static const String FILTER_OWN_TEXT = "ownText";
  static const String FILTER_HTML = "html";
  static const String FILTER_ALL = "all";
  static const String FILTER_HREF = "href";


  static const String JSOUP_SPLIT = ".";

  static const String JSOUP_SUPPORT_CHILD = "children";
  static const String JSOUP_SUPPORT_CLASS = "class";
  static const String JSOUP_SUPPORT_TAG = "tag";
  static const String JSOUP_SUPPORT_ID = "id";
  static const String JSOUP_SUPPORT_TEXT = "text";
  static const String JSOUP_SUPPORT_SELF = "self";


  static const String JSOUP_EXCLUDE_CHAR = "!";
  static const String JSOUP_EXCLUDE_INT = ":";

  static const String REGEXP_GROUP = r"\$(\d*)";

  static const String EXP_MATCH = r"[\{]?\{(.*?)\}[\}]?";
  static const String EXP_JSON_MATCH = r"[\{]?\{(\$.*?)\}[\}]?";

}