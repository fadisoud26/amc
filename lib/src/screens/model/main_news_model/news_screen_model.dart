class NewsModel {
  String publichDate;
  List<String> description;
  String imagePath;

  NewsModel({
    required this.publichDate,
    required this.description,
    required this.imagePath,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        publichDate: json['publish_date'],
        description: List<String>.from(json['description'].map((x) => x)),
        imagePath: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'publish_date': publichDate,
        'description': List<dynamic>.from(description.map((x) => x)),
        'image': imagePath,
      };
}
