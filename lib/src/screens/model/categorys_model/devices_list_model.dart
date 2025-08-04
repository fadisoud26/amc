// To parse this JSON data, do
//
//     final devicesListModel = devicesListModelFromJson(jsonString);

import 'dart:convert';

DevicesListModel devicesListModelFromJson(String str) => DevicesListModel.fromJson(json.decode(str));

String devicesListModelToJson(DevicesListModel data) => json.encode(data.toJson());

class DevicesListModel {
    String result;
    List<DevicessList> devicessList;

    DevicesListModel({
        required this.result,
        required this.devicessList,
    });

    factory DevicesListModel.fromJson(Map<String, dynamic> json) => DevicesListModel(
        result: json["result"],
        devicessList: List<DevicessList>.from(json["devicessList"].map((x) => DevicessList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "devicessList": List<dynamic>.from(devicessList.map((x) => x.toJson())),
    };
}

class DevicessList {
    String name;
    String image;
    bool isDoctor;
    String description;

    DevicessList({
        required this.name,
        required this.image,
        required this.isDoctor,
        required this.description,
    });

    factory DevicessList.fromJson(Map<String, dynamic> json) => DevicessList(
        name: json["name"],
        image: json["image"],
        isDoctor: json["isDoctor"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "isDoctor": isDoctor,
        "description": description,
    };
}
