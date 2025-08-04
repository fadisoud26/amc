import 'package:get/get.dart';

class MajorModel {
  MajorModel({
    this.title,
    this.body,
    this.isExpanded,
    this.image,
    this.isBgPink,
  });
  String? title;
  String? body;
  RxBool? isExpanded;
  String? image;
  bool? isBgPink;
}

class HelpModel {
  HelpModel({
    this.title,
    this.body,
    this.isExpanded,
  });
  String? title;
  String? body;
  RxBool? isExpanded;
}
