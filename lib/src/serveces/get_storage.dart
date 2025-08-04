import 'package:alwadi_medical_center/src/utils/api/get_storage_text.dart';
import 'package:get_storage/get_storage.dart';

void logoutWithStorage() {
  final s = GetStorage();
  s.remove(GetStorageText.userName);
  s.remove(GetStorageText.token);
  s.remove(GetStorageText.phoneNumber);
  s.remove(GetStorageText.profileImage);
}

String getToken() {
  final s = GetStorage();
  return s.read(GetStorageText.token);
}

Map<String, String> headerValue() {
  final s = GetStorage();
  String authToken = s.read(GetStorageText.token);
  return {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Token $authToken',
  };
}

bool checkIfUserDataIsEmpty() {
  final s = GetStorage();
  bool result = false;
  if (s.read(GetStorageText.profileImage) != null &&
      s.read(GetStorageText.phoneNumber) != null) result = true;

  return result;
}

bool checkIfUserCheckedIn() {
  final s = GetStorage();

  bool result = false;
  if (s.read(GetStorageText.userName) != null &&
      s.read(GetStorageText.token) != null) result = true;
  return result;
}

void setTokenAndUserName({required String token, required String userName}) {
  final s = GetStorage();
  s.write(GetStorageText.token, token);
  s.write(GetStorageText.userName, userName);
}

String getUserName() {
  final s = GetStorage();
  return s.read(GetStorageText.userName);
}

String getNumber() {
  final s = GetStorage();
  return s.read(GetStorageText.phoneNumber);
}

String getProfileImage() {
  final s = GetStorage();
  return s.read(GetStorageText.profileImage);
}
