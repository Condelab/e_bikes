import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_bikes/presentation/navigation/keys.dart';
import 'package:e_bikes/utils/CarouselItem.dart';
import 'package:e_bikes/utils/button.dart';
import 'package:e_bikes/utils/colors.dart';
import 'package:e_bikes/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _current = 0;
  final List<Widget> items = [
    CarouselItem(
      isImage: false,
      title: 'Welcome to E-Bikes',
      subtitle: 'Buying Electric bikes just got a lot easier, Try us today.',
    ),
    CarouselItem(
      isImage: false,
      title: 'Welcome to E-Bikes 2',
      subtitle: 'Buying Electric bikes just got a lot easier, Try us today.',
    ),
    CarouselItem(
      isImage: false,
      title: 'Welcome to E-Bikes 3',
      subtitle: 'Buying Electric bikes just got a lot easier, Try us today.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.background,
              width: 375.w,
              height: 812.h,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.5),
                Align(
                  child: CarouselSlider.builder(
                    itemCount: items.length,
                    options: CarouselOptions(
                      height: 80.h,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        _current = int.parse(index.toString());
                        setState(() {});
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: (_current == index) ? items[index] : SizedBox.shrink(),
                          ),
                        ],
                      );
                    },
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 15.h),
                DotsIndicator(
                  dotsCount: items.length,
                  position: _current,
                  decorator: DotsDecorator(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      activeShape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      size: Size(5, 5),
                      activeSize: Size(5, 5),
                      activeColor: Colors.black
                  ),
                ),
                SizedBox(height: 48.h),
                AppButton(
                  radius: 100.r,
                  image: AppAssets.icon_google,
                  buttonText: 'Login with Google',
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(RouteKeys.home);
                  },
                ),
                SizedBox(height: 48.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have any account?',
                      style: TextStyle(
                        color: AppColors.subTextYellow,
                        fontSize: 14.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.13,
                        letterSpacing: 0.50,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: AppColors.subTextBlue,
                        fontSize: 14.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.13,
                        letterSpacing: 0.50,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}