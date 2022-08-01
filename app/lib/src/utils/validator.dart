class Validator {
  static const _validEmailRegExp =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static const invalidEmailError = 'Invalid email';
  static const requiredFieldError = 'Required field';

  static String? validateEmail(String? email) {
    String? result;
    if (email?.isNotEmpty != true) {
      result = requiredFieldError;
    }
    if (email?.isNotEmpty == true &&
        !RegExp(_validEmailRegExp).hasMatch(email!)) {
      result = invalidEmailError;
    }
    return result;
  }

  static String? validateRequired(String? text) {
    String? result;
    if (text?.isNotEmpty != true) {
      result = requiredFieldError;
    }
    return result;
  }
}
