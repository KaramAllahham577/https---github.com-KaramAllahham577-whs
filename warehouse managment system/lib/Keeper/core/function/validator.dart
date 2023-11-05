import 'package:get/get.dart';

validInput(String val, int min, type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return '         not valid username';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return '        not valid email';
    }
  }
  if (type == 'number') {
    if (!GetUtils.isPhoneNumber(val)) {
      return '        not valid Number';
    }
  } if (type == 'text') {

      return '        not valid Text';

  }

  if (val.isEmpty) {
    return '          can not be empty';
  }

  if (val.length < min) {
    return "          Must be at least $min characters";
  }
}
