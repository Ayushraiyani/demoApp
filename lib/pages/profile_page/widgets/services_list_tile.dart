import 'package:flutter/material.dart';
import 'package:services_app/constant/app_pallete.dart';

class ServicesListTile extends StatelessWidget {
  final String title;
  final int number;
  final Color color;
  final VoidCallback onTap;
  const ServicesListTile(
      {super.key,
      required this.title,
      required this.number,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: AppPallete.whiteColor,
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        trailing: Container(
          width: 56, // Fixed width for the circle
          height: 60, // Fixed height for the circle
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  50), // Half of the width and height to make it a circle
              border: Border.all(color: color, width: 1.5)),
          alignment: Alignment.center, // Center the text
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
