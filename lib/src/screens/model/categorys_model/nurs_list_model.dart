// To parse this JSON data, do
//
//     final nursListModel = nursListModelFromJson(jsonString);

import 'dart:convert';

NursListModel nursListModelFromJson(String str) => NursListModel.fromJson(json.decode(str));

String nursListModelToJson(NursListModel data) => json.encode(data.toJson());

class NursListModel {
    String result;
    List<TherapistList> therapistList;

    NursListModel({
        required this.result,
        required this.therapistList,
    });

    factory NursListModel.fromJson(Map<String, dynamic> json) => NursListModel(
        result: json["result"],
        therapistList: List<TherapistList>.from(json["therapistList"].map((x) => TherapistList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "therapistList": List<dynamic>.from(therapistList.map((x) => x.toJson())),
    };
}

class TherapistList {
    String name;
    String image;
    String specialization;
    String description;
    bool isDoctor;

    TherapistList({
        required this.name,
        required this.image,
        required this.specialization,
        required this.description,
        required this.isDoctor,
    });

    factory TherapistList.fromJson(Map<String, dynamic> json) => TherapistList(
        name: json["name"],
        image: json["image"],
        specialization: json["specialization"],
        description: json["description"],
        isDoctor: json["is_doctor"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "specialization": specialization,
        "description": description,
        "is_doctor": isDoctor,
    };
}
