import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatelessWidget {
  final String imagePath;

  const OnboardingWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 305.w,
        height: 305.h,
        child: Image.asset(imagePath),
      ),
    );
  }
}
