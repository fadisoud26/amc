// To parse this JSON data, do
//
//     final deviceProfileModel = deviceProfileModelFromJson(jsonString);

import 'dart:convert';

DeviceProfileModel deviceProfileModelFromJson(String str) =>
    DeviceProfileModel.fromJson(json.decode(str));

String deviceProfileModelToJson(DeviceProfileModel data) =>
    json.encode(data.toJson());

class DeviceProfileModel {
  String result;
  String name;
  List<String> descriptipn;
  String image;

  DeviceProfileModel({
    required this.result,
    required this.name,
    required this.descriptipn,
    required this.image,
  });

  factory DeviceProfileModel.fromJson(Map<String, dynamic> json) =>
      DeviceProfileModel(
        result: json["result"],
        name: json["name"],
        descriptipn: List<String>.from(json["descriptipn"].map((x) => x)),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "name": name,
        "descriptipn": List<dynamic>.from(descriptipn.map((x) => x)),
        "image": image,
      };
}
