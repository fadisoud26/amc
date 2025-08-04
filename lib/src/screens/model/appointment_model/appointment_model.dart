// To parse this JSON data, do
//
//     final myAppointmentModel = myAppointmentModelFromJson(jsonString);

import 'dart:convert';

MyAppointmentModel myAppointmentModelFromJson(String str) =>
    MyAppointmentModel.fromJson(json.decode(str));

String myAppointmentModelToJson(MyAppointmentModel data) =>
    json.encode(data.toJson());

class MyAppointmentModel {
  String result;
  List<Previous> previous;
  List<Previous> upcoming;

  MyAppointmentModel({
    required this.result,
    required this.previous,
    required this.upcoming,
  });

  factory MyAppointmentModel.fromJson(Map<String, dynamic> json) =>
      MyAppointmentModel(
        result: json["result"],
        previous: List<Previous>.from(
            json["previous"].map((x) => Previous.fromJson(x))),
        upcoming: List<Previous>.from(
            json["upcoming"].map((x) => Previous.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "previous": List<dynamic>.from(previous.map((x) => x.toJson())),
        "upcoming": List<dynamic>.from(upcoming.map((x) => x.toJson())),
      };
}

class Previous {
  String date;
  String time;
  String sectionName;
  String competentName;
  int id;
  dynamic deviceName;
  bool isDoctor;

  Previous({
    required this.date,
    required this.time,
    required this.sectionName,
    required this.competentName,
    required this.id,
    this.deviceName,
    required this.isDoctor,
  });

  factory Previous.fromJson(Map<String, dynamic> json) => Previous(
        date: json["date"],
        time: json["time"],
        sectionName: json["sectionName"],
        competentName: json["competentName"],
        id: json["id"],
        deviceName: json["deviceName"],
        isDoctor: json["doctorAppointment"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "time": time,
        "sectionName": sectionName,
        "competentName": competentName,
        "id": id,
        "deviceName": deviceName,
        "doctorAppointment": isDoctor,
      };
}
