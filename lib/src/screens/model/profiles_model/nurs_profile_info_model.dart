// To parse this JSON data, do
//
//     final nursProfileModel = nursProfileModelFromJson(jsonString);

import 'dart:convert';

NursProfileModel nursProfileModelFromJson(String str) =>
    NursProfileModel.fromJson(json.decode(str));

String nursProfileModelToJson(NursProfileModel data) =>
    json.encode(data.toJson());

class NursProfileModel {
  String result;
  String name;
  String specialization;
  List<String> descriptipn;
  String image;

  NursProfileModel({
    required this.result,
    required this.name,
    required this.specialization,
    required this.descriptipn,
    required this.image,
  });

  factory NursProfileModel.fromJson(Map<String, dynamic> json) =>
      NursProfileModel(
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
