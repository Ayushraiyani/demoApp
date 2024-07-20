import 'package:flutter/material.dart';
import 'package:services_app/constant/app_pallete.dart';

class FloatingNavBtn extends StatelessWidget {
  const FloatingNavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 60.0,
          height: 60.0,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: AppPallete.errorColor,
            foregroundColor: AppPallete.whiteColor,
            shape: const CircleBorder(
              side: BorderSide(color: AppPallete.backgroundColor, width: 1.5),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.emergency_outlined,
              size: 32,
              grade: 6,
            ),
          ),
        ),
        const Positioned(
          bottom: -24.5,
          child: Text(
            'Emergency Service',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
