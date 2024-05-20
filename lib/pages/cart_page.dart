import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/home_page.dart';
import 'package:tech_shop/pages/order_review_page.dart';
import 'package:tech_shop/pages/search_page.dart';
import 'package:tech_shop/pages/user_profile_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/primary_button.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        leadingWidth: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/images/icons/black_arrow_left.svg'),
        ),
        title: const Text(
          'MY CART',
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
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 142,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF3F6F8),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/png/beosound.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Beosound 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            Text(
                              'BLACK',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkTextColor.withOpacity(0.6),
                              ),
                            ),
                            const Text(
                              '\$1,600',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                      'assets/images/icons/minus.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 32,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                      'assets/images/icons/plus.svg',
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  20.height(),
                  Container(
                    width: double.infinity,
                    height: 142,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF3F6F8),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/png/beosound.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Beosound 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            Text(
                              'BLACK',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkTextColor.withOpacity(0.6),
                              ),
                            ),
                            const Text(
                              '\$1,600',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                      'assets/images/icons/minus.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 32,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: SvgPicture.asset(
                                      'assets/images/icons/plus.svg',
                                    ),
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
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Divider(
                  color: const Color(0xFF8F92A1).withOpacity(0.2),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          Text(
                            '\$ 9,800',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      40.height(),
                      PrimaryButton(
                        text: 'Checkout',
                        icon: 'arrow_long_right.svg',
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const OrderReviewPage(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              icon: Row(
                children: [
                  SvgPicture.asset('assets/images/icons/shopping.svg'),
                  10.width(),
                  const Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const UserProfilePage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/images/icons/person2.svg'),
            )
          ],
        ),
      ),
    );
  }
}
