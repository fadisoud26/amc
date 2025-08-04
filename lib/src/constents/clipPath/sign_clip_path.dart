import 'package:flutter/material.dart';

class SignUpClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    final lowPoint = size.height - 30;
    final highPoint = size.height - 50;

    path.lineTo(0, lowPoint);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, highPoint, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
