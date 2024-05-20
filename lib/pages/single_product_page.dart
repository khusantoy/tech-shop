import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/utils/sizes.dart';

class SingleProductPage extends StatefulWidget {
  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  @override
  void initState() {
    super.initState();
    showModal();
  }

  void showModal() {
    Future.delayed(const Duration(seconds: 1)).then((val) {
      showModalBottomSheet(
          isDismissible: false,
          enableDrag: false,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: SizeUtils.screenFullHeight(context) * 0.5,
              width: SizeUtils.screenWidth(context),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      top: 40,
                      right: 40,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Speakers',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        10.height(),
                        const Text(
                          'Beosound Balance',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        10.height(),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '4.5',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.darkTextColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '(1k Reviews)',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.darkTextColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            8.width(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.primaryColor,
                              ),
                            ),
                            5.width(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.primaryColor,
                              ),
                            ),
                            5.width(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.primaryColor,
                              ),
                            ),
                            5.width(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.primaryColor,
                              ),
                            ),
                            5.width(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xFF8F92A1),
                              ),
                            )
                          ],
                        ),
                        20.height(),
                        const Text(
                          '\$1,600',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFF3F6F8),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.height(),
                        Text(
                          'Available Colors',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkTextColor.withOpacity(0.4),
                          ),
                        ),
                        15.height(),
                        Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: SvgPicture.asset(
                                    'assets/images/icons/check_black.svg'),
                              ),
                            ),
                            15.width(),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF8B6C3),
                              ),
                            ),
                            15.width(),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.darkTextColor,
                              ),
                            )
                          ],
                        ),
                        30.height(),
                        SizedBox(
                          height: 44,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkTextColor,
                                  letterSpacing: 1,
                                ),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeUtils.screenWidth(context),
        height: SizeUtils.screenFullHeight(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/png/beasound_balance.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        // child: Column(
        //   children: [
        //     50.height(),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         SvgPicture.asset('assets/images/icons/arrow_long_left.svg'),
        //         SvgPicture.asset('assets/images/icons/arrow_long_left.svg')
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
