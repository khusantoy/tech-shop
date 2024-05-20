import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/container_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';

class OrderCompletePage extends StatelessWidget {
  const OrderCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        leadingWidth: 100.w,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/icons/black_arrow_left.svg'),
        ),
        title: Text(
          'ORDER COMPLETE',
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Column(
          children: [
            138.height(),
            Container(
              width: 90.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SvgPicture.asset('assets/images/icons/succes_card.svg'),
              ),
            ),
            24.height(),
            Text(
              'Payment Successful!',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.darkTextColor,
              ),
            ),
            Text(
              'Orders will arrive in 3 days!',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.darkTextColor.withOpacity(0.6),
              ),
            ),
            80.height(),
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
                                width: 64.w,
                                height: 64.h,
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
                          17.width()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ContainerWidget(
              widget: PrimaryButton(
                text: 'See order details',
                icon: 'arrow_long_right.svg',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
