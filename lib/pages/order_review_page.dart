import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/order_complete_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/divider_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';

class OrderReviewPage extends StatelessWidget {
  const OrderReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        leadingWidth: 100.w,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/images/icons/black_arrow_left.svg'),
        ),
        title: Text(
          'ORDER REVIEW',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.darkTextColor,
            letterSpacing: 1.w,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 35.w),
            child: InkWell(
              child: SvgPicture.asset('assets/images/icons/threedots.svg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35.w, top: 24.h, right: 35.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset('assets/images/icons/toggle.svg'),
                  )
                ],
              ),
            ),
            24.height(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: 80.w,
                                height: 80.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF3F6F8),
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Image.asset(
                                    'assets/images/png/beosound.png'),
                              ),
                              8.height(),
                              Text(
                                'Beosound 1',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          15.width()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            24.height(),
            const DividerWidget(),
            24.height(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SHIPPING',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.w,
                      color: AppColors.darkTextColor.withOpacity(0.4),
                    ),
                  ),
                  16.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/images/icons/direction.svg'),
                      Text(
                        '178 Broadway, Brooklyn,…',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        width: 56.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFDB47),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            'Change',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  16.height(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                      vertical: 15.h,
                    ),
                    width: double.infinity,
                    height: 70.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.w,
                        color: const Color(0xFFF3F6F8),
                      ),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/icons/cart.svg'),
                            24.width(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Standart',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '2-3 days',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTextColor
                                        .withOpacity(0.2),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_long_down.svg',
                        ),
                      ],
                    ),
                  ),
                  24.height(),
                  Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.w,
                      color: AppColors.darkTextColor.withOpacity(0.4),
                    ),
                  ),
                  12.height(),
                  Container(
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.darkTextColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              'assets/images/icons/mastercard.svg'),
                          Text(
                            '* * * *    9000',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: 56.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFDB47),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                'Change',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            24.height(),
            const DividerWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 35.w,
                vertical: 24.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.greyTextColor,
                        ),
                      )
                    ],
                  ),
                  8.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.darkTextColor,
                        ),
                      ),
                      Text(
                        '\$ 9,800',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  50.height(),
                  PrimaryButton(
                    text: 'Checkout',
                    icon: 'arrow_long_right.svg',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const OrderCompletePage(),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
