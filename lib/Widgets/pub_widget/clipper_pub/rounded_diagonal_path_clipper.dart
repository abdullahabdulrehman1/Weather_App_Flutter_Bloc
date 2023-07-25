import 'package:flutter/material.dart';

/// Diagonal clipper with rounded borders
class RoundedDiagonalPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0.0, size.height) // Move to the bottom-left corner
      ..lineTo(0.0, 120.0) // Draw a line to the top-left corner
      ..quadraticBezierTo(10.0, 85.0, 40.0, 70.0) // Draw the rounded diagonal
      ..lineTo(size.width - 20.0, 0.0) // Draw a line to the top-right corner
      ..lineTo(size.width, 0.0) // Draw a line to the bottom-right corner
      ..lineTo(size.width,
          size.height) // Draw a line to the bottom-left corner (closing the path)
      ..close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
