
class CalenderModel {
  String result;
  List<Schedule> schedule;

  CalenderModel({
    required this.result,
    required this.schedule,
  });

  factory CalenderModel.fromJson(Map<String, dynamic> json) => CalenderModel(
        result: json["result"],
        schedule: List<Schedule>.from(
            json["schedule"].map((x) => Schedule.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "schedule": List<dynamic>.from(schedule.map((x) => x.toJson())),
      };
}

class Schedule {
  String day;
  List<TimeList>? timeList;

  Schedule({
    required this.day,
    this.timeList,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        day: json["day"],
        timeList: json["timeList"] == null
            ? []
            : List<TimeList>.from(
                json["timeList"]!.map((x) => TimeList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "timeList": timeList == null
            ? []
            : List<dynamic>.from(timeList!.map((x) => x.toJson())),
      };
}

class TimeList {
  String time;
  bool free;

  TimeList({
    required this.time,
    required this.free,
  });

  factory TimeList.fromJson(Map<String, dynamic> json) => TimeList(
        time: json["time"],
        free: json["free"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "free": free,
      };
}
