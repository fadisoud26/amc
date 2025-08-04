// To parse this JSON data, do
//
//     final doctorsListModel = doctorsListModelFromJson(jsonString);

import 'dart:convert';

DoctorsListModel doctorsListModelFromJson(String str) =>
    DoctorsListModel.fromJson(json.decode(str));

String doctorsListModelToJson(DoctorsListModel data) =>
    json.encode(data.toJson());

class DoctorsListModel {
  String result;
  List<DoctorsList> doctorsList;

  DoctorsListModel({
    required this.result,
    required this.doctorsList,
  });

  factory DoctorsListModel.fromJson(Map<String, dynamic> json) =>
      DoctorsListModel(
        result: json["result"],
        doctorsList: List<DoctorsList>.from(
            json["doctorsList"].map((x) => DoctorsList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "doctorsList": List<dynamic>.from(doctorsList.map((x) => x.toJson())),
      };
}

class DoctorsList {
  String name;
  String image;
  bool isDoctor;
  String description;
  String specialization;

  DoctorsList({
    required this.name,
    required this.image,
    required this.isDoctor,
    required this.description,
    required this.specialization,
  });

  factory DoctorsList.fromJson(Map<String, dynamic> json) => DoctorsList(
        name: json["name"],
        image: json["image"],
        isDoctor: json["isDoctor"],
        description: json["description"],
        specialization: json["specialization"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "isDoctor": isDoctor,
        "description": description,
        "specialization": specialization,
      };
}
