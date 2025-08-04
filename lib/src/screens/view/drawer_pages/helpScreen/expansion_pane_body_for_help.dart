
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class ExpansionPanelBodyForHelp extends StatelessWidget {
  const ExpansionPanelBodyForHelp({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text(
            text,
            style: const TextStyle(color:  theBlackColor),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
