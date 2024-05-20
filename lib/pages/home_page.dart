import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/search_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(21),
          child: SvgPicture.asset('assets/images/icons/hamburger.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: SvgPicture.asset('assets/images/icons/scan_qr.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              const Text(
                'Browse by Categories',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              20.height(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 205,
                        height: 248,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset('assets/images/png/shape.png'),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child:
                                  Image.asset('assets/images/png/speakers.png'),
                            ),
                            const Positioned(
                              bottom: 50,
                              left: 66,
                              child: Text(
                                'Speakers',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            ),
                            const Positioned(
                              bottom: 20,
                              left: 66,
                              child: Text(
                                '100+ Product',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      20.width(),
                      Container(
                        width: 205,
                        height: 248,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset('assets/images/png/shape.png'),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                    'assets/images/png/headphone.png'),
                              ),
                            ),
                            const Positioned(
                              bottom: 50,
                              left: 66,
                              child: Text(
                                'Speakers',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            ),
                            const Positioned(
                              bottom: 20,
                              left: 66,
                              child: Text(
                                '25+ Product',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Divider(
                  color: Color(0xFFF3F6F8),
                ),
              ),
              const Text(
                'Recommended for You',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              30.height(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: 145,
                        height: 209,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/png/rounded_shape.png'),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/png/beosound.png'),
                            const Text(
                              'Beosound 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            const Text(
                              '\$1,600',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.darkTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    20.width(),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 145,
                      height: 209,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/png/rounded_shape.png'),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/png/beolit.png'),
                          const Text(
                            'Beosound 17',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          const Text(
                            '\$550',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 145,
                      height: 209,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/png/rounded_shape.png'),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/png/beosound.png'),
                          const Text(
                            'Beosound 1',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          const Text(
                            '\$1,600',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    20.width(),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 145,
                      height: 209,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/png/rounded_shape.png'),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/png/beolit.png'),
                          const Text(
                            'Beosound 17',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkTextColor,
                            ),
                          ),
                          const Text(
                            '\$550',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              icon: Row(
                children: [
                  SvgPicture.asset('assets/images/icons/home.svg'),
                  10.width(),
                  const Text(
                    'Home',
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
                    builder: (ctx) => const SearchPage(),
                  ),
                );
              },
              icon: SvgPicture.asset('assets/images/icons/search.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/icons/shopping.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/icons/person2.svg'),
            )
          ],
        ),
      ),
    );
  }
}
