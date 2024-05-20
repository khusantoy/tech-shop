import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtensions on int {
  Widget height() {
    return SizedBox(
      height: toDouble().h,
    );
  }

  Widget width() {
    return SizedBox(
      width: toDouble().w,
    );
  }
}
