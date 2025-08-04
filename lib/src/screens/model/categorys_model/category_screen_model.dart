// To parse this JSON data, do
//
//     final categorysModel = categorysModelFromJson(jsonString);

import 'dart:convert';

CategorysModel categorysModelFromJson(String str) =>
    CategorysModel.fromJson(json.decode(str));

String categorysModelToJson(CategorysModel data) => json.encode(data.toJson());

class CategorysModel {
  String result;
  List<SInSection> doctorsInSections;
  List<SInSection> devicesInSections;

  CategorysModel({
    required this.result,
    required this.doctorsInSections,
    required this.devicesInSections,
  });

  factory CategorysModel.fromJson(Map<String, dynamic> json) => CategorysModel(
        result: json["result"],
        doctorsInSections: List<SInSection>.from(
            json["doctorsInSections"].map((x) => SInSection.fromJson(x))),
        devicesInSections: List<SInSection>.from(
            json["devicesInSections"].map((x) => SInSection.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "doctorsInSections":
            List<dynamic>.from(doctorsInSections.map((x) => x.toJson())),
        "devicesInSections":
            List<dynamic>.from(devicesInSections.map((x) => x.toJson())),
      };
}

class SInSection {
  String name;
  String fullName;
  String image;
  int number;

  SInSection({
    required this.name,
    required this.fullName,
    required this.image,
    required this.number,
  });

  factory SInSection.fromJson(Map<String, dynamic> json) => SInSection(
        name: json["name"],
        fullName: json["fullName"],
        image: json["image"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "fullName": fullName,
        "image": image,
        "number": number,
      };
}
