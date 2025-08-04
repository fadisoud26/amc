import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isBgPink,
  }) : super(key: key);
  final String text;
  final bool isBgPink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        isBgPink ? 64.0 : 16.0,
        8,
        isBgPink ? 16.0 : 64.0,
        8,
      ),
      child: Align(
        alignment: isBgPink ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isBgPink ? thePrimaryColor : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: TextStyle(color: isBgPink ? theWhiteColor : theBlackColor),
            ),
          ),
        ),
      ),
    );
  }
}
