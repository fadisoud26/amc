import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNewsDescription extends StatelessWidget {
  MainNewsDescription({
    super.key,
    required this.description,
  });

  final List<String> description;
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ListView.builder(
          itemCount: description.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          itemBuilder: (context, index) {
            return Text(
              description[index],
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Get.isDarkMode ? theWhiteColor : Colors.black),
            );
          }),
    );
  }
}
