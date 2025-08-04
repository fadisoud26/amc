import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/main_news_post/main_news_description_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/main_news_post/main_news_image_widget.dart';
import 'package:flutter/material.dart';

class InstructionPostWidget extends StatelessWidget {
  const InstructionPostWidget({
    super.key,
    required this.description,
    required this.imagePath,
  });

  final List<String> description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 1),
      child: MaterialWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top : 8.0),
              child: MainNewsDescription(description: description),
            ),
            MainNewsImage(imagePath: imagePath),
          ],
        ),
      ),
    );
  }
}
