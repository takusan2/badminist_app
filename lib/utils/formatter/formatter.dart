import 'package:openapi/openapi.dart';

class Formatter {
  static String playerLevelToJp(PlayerLevel level) {
    switch (level) {
      case PlayerLevel.beginner:
        return '初級者';
      case PlayerLevel.intermediate:
        return '中級者';
      case PlayerLevel.advanced:
        return '上級者';
      default:
        return '';
    }
  }

  static String matchRuleToJp(Rule rule) {
    return switch (rule) {
      Rule.singles => 'シングルス',
      Rule.doubles => 'ダブルス',
      _ => '',
    };
  }
}
