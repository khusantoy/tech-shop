import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_shop/utils/colors.dart';

class SubtitleTextWidget extends StatelessWidget {
  final String text;

  const SubtitleTextWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.darkTextColor.withOpacity(0.6),
      ),
    );
  }
}
