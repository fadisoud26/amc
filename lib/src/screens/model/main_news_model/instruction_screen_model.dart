class InstructionModel {
  List<String> description;
  String imagePath;

  InstructionModel({
    required this.description,
    required this.imagePath,
  });

  factory InstructionModel.fromJson(Map<String, dynamic> json) =>
      InstructionModel(
        description: List<String>.from(json['description'].map((x) => x)),
        imagePath: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'description': List<dynamic>.from(description.map((x) => x)),
        'image': imagePath,
      };
}
