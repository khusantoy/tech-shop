import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/cart_page.dart';
import 'package:tech_shop/pages/home_page.dart';
import 'package:tech_shop/pages/search_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/utils/sizes.dart';
import 'package:tech_shop/widgets/container_widget.dart';
import 'package:tech_shop/widgets/divider_widget.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: SizeUtils.screenWidth(context),
                  height: SizeUtils.screenFullHeight(context) * 0.6,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(12),
                      bottomEnd: Radius.circular(12),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: (SizeUtils.screenWidth(context) / 2) - 40.w,
                        top: 68.h,
                        child: Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/png/user.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170.h,
                        left: (SizeUtils.screenWidth(context) / 2 - 55.w),
                        child: const Text(
                          'Lee Waters',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250,
                        left: SizeUtils.screenWidth(context) / 2 - 85,
                        child: const Text(
                          'hello.carrotlabs@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 320,
                  left: 35,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: SizeUtils.screenWidth(context) - 70,
                    height: 383.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 35.w,
                              vertical: 16.h,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order #CS1020',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.darkTextColor,
                                  ),
                                ),
                                Text(
                                  '•  In Progress',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF9923FF),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const DividerWidget(),
                          16.height(),
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
                                                borderRadius:
                                                    BorderRadius.circular(20.r),
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
                          16.height(),
                          const DividerWidget(),
                          16.height(),
                          Text(
                            'Your order is on its way!',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          const Text(
                            'Orders will arrive in 3 days!',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          24.height(),
                          Container(
                            width: 145.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFDB47),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                'TRACK',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            ),
                          ),
                          32.height(),
                          ContainerWidget(
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/icons/person.svg',
                                    ),
                                    10.width(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My Account',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.darkTextColor,
                                          ),
                                        ),
                                        Text(
                                          'Edit your informations',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: AppColors.darkTextColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                    'assets/images/icons/arrow_long_right.svg')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const HomePage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/images/icons/home.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const SearchPage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/images/icons/search.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const MyCartPage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/images/icons/shopping.svg'),
            ),
            IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              icon: Row(
                children: [
                  SvgPicture.asset('assets/images/icons/person2.svg'),
                  10.width(),
                  const Text(
                    'User',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
