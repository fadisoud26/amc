// To parse this JSON data, do
//
//     final doctorProfileModel = doctorProfileModelFromJson(jsonString);

import 'dart:convert';

DoctorProfileModel doctorProfileModelFromJson(String str) =>
    DoctorProfileModel.fromJson(json.decode(str));

String doctorProfileModelToJson(DoctorProfileModel data) =>
    json.encode(data.toJson());

class DoctorProfileModel {
  String result;
  String name;
  String specialization;
  List<String> descriptipn;
  String image;

  DoctorProfileModel({
    required this.result,
    required this.name,
    required this.specialization,
    required this.descriptipn,
    required this.image,
  });

  factory DoctorProfileModel.fromJson(Map<String, dynamic> json) =>
      DoctorProfileModel(
        result: json["result"],
        name: json["name"],
        specialization: json["specialization"],
        descriptipn: List<String>.from(json["descriptipn"].map((x) => x)),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "name": name,
        "specialization": specialization,
        "descriptipn": List<dynamic>.from(descriptipn.map((x) => x)),
        "image": image,
      };
}
