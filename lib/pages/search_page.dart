import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/home_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 40,
                  right: 40,
                  bottom: 30,
                ),
                child: SizedBox(
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF3F6F8),
                      hintText: 'Search on CaStore',
                      hintStyle: const TextStyle(
                        color: AppColors.darkTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child:
                            SvgPicture.asset('assets/images/icons/search.svg'),
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFF3F6F8),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Searches',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkTextColor.withOpacity(0.4),
                        letterSpacing: 1,
                      ),
                    ),
                    10.height(),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/icons/clock.svg'),
                      title: const Text(
                        'Beosound 1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing:
                          SvgPicture.asset('assets/images/icons/close.svg'),
                    ),
                    Divider(
                      color: AppColors.greyTextColor.withOpacity(0.2),
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/icons/clock.svg'),
                      title: const Text(
                        'Beosound Balance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing:
                          SvgPicture.asset('assets/images/icons/close.svg'),
                    ),
                    Divider(
                      color: AppColors.greyTextColor.withOpacity(0.2),
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/icons/clock.svg'),
                      title: const Text(
                        'Beolit 17',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing:
                          SvgPicture.asset('assets/images/icons/close.svg'),
                    ),
                    Divider(
                      color: AppColors.greyTextColor.withOpacity(0.2),
                    ),
                    30.height(),
                    Text(
                      'Popular Searches',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkTextColor.withOpacity(0.4),
                        letterSpacing: 1,
                      ),
                    ),
                    30.height(),
                    Wrap(
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
                              image: AssetImage(
                                  'assets/images/png/rounded_shape.png'),
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
                        20.width(),
                        Container(
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
                  ],
                ),
              ),
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              icon: Row(
                children: [
                  SvgPicture.asset('assets/images/icons/search.svg'),
                  10.width(),
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
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
