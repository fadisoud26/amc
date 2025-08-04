import 'dart:convert';
import 'package:alwadi_medical_center/src/screens/model/main_news_model/instruction_screen_model.dart';
import 'package:alwadi_medical_center/src/screens/model/main_news_model/news_screen_model.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';

MainNewsModel mainNewsModelFromJson(String str) =>
    MainNewsModel.fromJson(json.decode(str));

String mainNewsModelToJson(MainNewsModel data) => json.encode(data.toJson());

class MainNewsModel {
  String result;
  List<NewsModel> news;
  List<InstructionModel> instruction;
  int newsLenght;
  int instructionLength;

  MainNewsModel({
    required this.newsLenght,
    required this.instructionLength,
    required this.result,
    required this.news,
    required this.instruction,
  });

  factory MainNewsModel.fromJson(Map<String, dynamic> json) => MainNewsModel(
        newsLenght: json['posts_length'],
        instructionLength: json['ins_length'],
        result: json[ApiParName.result],
        news: List<NewsModel>.from(
            json['posts'].map((x) => NewsModel.fromJson(x))),
        instruction: List<InstructionModel>.from(
            json['instructions'].map((x) => InstructionModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'posts_length': newsLenght,
        'ins_length': instructionLength,
        ApiParName.result: result,
        'posts': List<dynamic>.from(news.map((x) => x.toJson())),
        'instructions': List<dynamic>.from(instruction.map((x) => x.toJson())),
      };
}
