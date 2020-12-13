import 'package:email_validator/email_validator.dart';

bool isEmailValid(String email) {
  var valid = true;

  if (email.isEmpty) {
    valid = false;
  } else {
    valid = EmailValidator.validate(email);
  }

  return valid;
}
