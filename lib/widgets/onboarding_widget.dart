import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  String imagePath;

  OnboardingWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 305,
        height: 305,
        child: Image.asset(imagePath),
      ),
    );
  }
}
