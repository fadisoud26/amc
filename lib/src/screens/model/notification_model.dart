import 'dart:convert';

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) =>
    json.encode(data.toJson());

class NotificationModel {
  String result;
  List<Notification> notifications;

  NotificationModel({
    required this.result,
    required this.notifications,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        result: json["result"],
        notifications: List<Notification>.from(
            json["notifications"].map((x) => Notification.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "notifications":
            List<dynamic>.from(notifications.map((x) => x.toJson())),
      };
}

class Notification {
  String date;
  String time;
  String sectionName;
  String competentName;
  String? deviceName;
  int id;
  bool doctorAppointment;
  String type;

  Notification({
    required this.date,
    required this.time,
    required this.sectionName,
    required this.competentName,
    this.deviceName,
    required this.id,
    required this.doctorAppointment,
    required this.type,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        date: json["date"],
        time: json["time"],
        sectionName: json["sectionName"],
        competentName: json["competentName"],
        deviceName: json["deviceName"],
        id: json["id"],
        doctorAppointment: json["doctorAppointment"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "time": time,
        "sectionName": sectionName,
        "competentName": competentName,
        "deviceName": deviceName,
        "id": id,
        "doctorAppointment": doctorAppointment,
        "type": type,
      };
}
