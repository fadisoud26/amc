import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class ExpansionPanelBody extends StatelessWidget {
  const ExpansionPanelBody({
    super.key,
    required this.image,
    required this.text,
    required this.isBgPink,
  });
  final String text;
  final String image;
  final bool isBgPink;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text(
            text,
            style: TextStyle(color: isBgPink ? theWhiteColor : theBlackColor),
            textAlign: TextAlign.end,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(materialRadios),
              bottomRight: Radius.circular(materialRadios),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
