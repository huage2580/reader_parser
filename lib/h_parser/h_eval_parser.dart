import 'package:expressions/expressions.dart';
import 'package:yuedu_parser/h_parser/regexp_rule.dart';

///简单表达式计算
class HEvalParser {
  var context;

  HEvalParser(this.context);

  dynamic _eval(String expression) {
    Expression exp = Expression.parse(expression);
    // Evaluate expression
    final evaluator = const ExpressionEvaluator();
    return evaluator.eval(exp, context);
  }

  String parse(String input) {
    if(input == null || input.trim().isEmpty){
      return input;
    }
    var regexp = RegExp(RegexpRule.EXP_MATCH);
    var mapper = (Match match) {
      var expression = match.group(1);
      return _eval(expression).toString();
    };
    return input.replaceAllMapped(regexp, mapper);
  }
}
