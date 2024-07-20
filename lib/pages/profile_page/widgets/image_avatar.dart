import 'package:flutter/material.dart';

class AvatarWithBorder extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double borderWidth;
  final Color borderColor;

  AvatarWithBorder({
    required this.imageUrl,
    required this.radius,
    required this.borderWidth,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2 + borderWidth * 2,
      height: radius * 2 + borderWidth * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
