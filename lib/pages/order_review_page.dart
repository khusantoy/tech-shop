import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/utils/colors.dart';

class OrderReviewPage extends StatelessWidget {
  const OrderReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/icons/black_arrow_left.svg'),
        ),
        title: const Text(
          'ORDER REVIEW',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: AppColors.darkTextColor,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/icons/threedots.svg'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkTextColor,
                      ),
                    ),
                    InkWell(
                      child: SvgPicture.asset('assets/images/icons/toggle.svg'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F6F8)
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
