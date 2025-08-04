// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String result;
    String username;
    String birthDate;
    String phoneNumber;
    bool isSingle;
    bool isMale;
    String profilePicture;

    UserModel({
        required this.result,
        required this.username,
        required this.birthDate,
        required this.phoneNumber,
        required this.isSingle,
        required this.isMale,
        required this.profilePicture,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        result: json["result"],
        username: json["username"],
        birthDate: json["birth_date"],
        phoneNumber: json["phoneNumber"],
        isSingle: json["isSingle"],
        isMale: json["isMale"],
        profilePicture: json["profilePicture"],
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "username": username,
        "birth_date": birthDate,
        "phoneNumber": phoneNumber,
        "isSingle": isSingle,
        "isMale": isMale,
        "profilePicture": profilePicture,
    };
}
