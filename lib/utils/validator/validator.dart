class Validator {
  static const String _emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'メールアドレスを入力してください';
    } else if (!RegExp(_emailRegex).hasMatch(email)) {
      return 'メールアドレスの形式が正しくありません';
    }
    return null;
  }

  static String? nullCheck(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return message ?? '入力してください';
    }
    return null;
  }
}
