import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:get/get.dart';

String? pinCodeTextFieldValidator(value) {
  if (value == null || value.isEmpty) {
    return AMCText.pinCodeCantBeEmpty.tr;
  }
  return null;
}

String? textValidator(value) {
  if (value == null || value.isEmpty) {
    return AMCText.thisFieldCantBeEmpty.tr;
  }
  return null;
}

String? passwordValidator(value) {
  if (value == null || value.isEmpty) {
    return AMCText.passwordFieldCantBeEmpty.tr;
  }
  if (value.length < 8) {
    return AMCText.passwordLengthMustLongerThan.tr;
  }
  return null;
}

String? phoneNumberValidator(value) {
  if (value == null || value.isEmpty) {
    return AMCText.phoneNumberFieldCantBeEmpty.tr;
  }
  if (!value.toString().startsWith('09')) {
    return AMCText.enterAValidPhoneNumber.tr;
  }
  return null;
}

String? phoneNumberValidatorForEditing(value) {
  if (value == null || value.isEmpty) {
    return '';
  }
  if (!value.toString().startsWith('09')) {
    return AMCText.enterAValidPhoneNumber.tr;
  }
  return null;
}

String? emailValidator(value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";

  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return AMCText.emailFieldCantBeEmpty.tr;
  }
  if (!regex.hasMatch(value)) {
    return AMCText.enterAValidEmailAddress.tr;
  }
  return null;
}

String? dateTimeValidator(value) {
  if (value.isEmpty) {
    return AMCText.pleaseEnterADate.tr;
  }
  return null;
}
