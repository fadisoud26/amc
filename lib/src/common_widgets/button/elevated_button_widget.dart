import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.onTap,
    required this.title,
    this.width,
    this.withHeight,
    this.isPinkBackground,
  }) : super(key: key);

  final Function() onTap;
  final String title;
  final double? width;
  final bool? withHeight;
  final int? isPinkBackground;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (width != null) ? width : double.infinity,
      //height: 40,
      child: Expanded(
        child: (withHeight == null)
            ? ElevatedButton(
                onPressed: onTap,
                child: Text(title),
              )
            : ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15)),
                child: Text(title),
              ),
      ),
    );
  }
}
