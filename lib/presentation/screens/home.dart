import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_bikes/presentation/navigation/keys.dart';
import 'package:e_bikes/utils/CarouselItem.dart';
import 'package:e_bikes/utils/button.dart';
import 'package:e_bikes/utils/colors.dart';
import 'package:e_bikes/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final List<Widget> items = [
    CarouselItem(
      isImage: true,
      bikeImage: AppAssets.carouselBike,
    ),
   CarouselItem(
     isImage: true,
     bikeImage: AppAssets.carouselBike,
    ),
   CarouselItem(
     isImage: true,
     bikeImage: AppAssets.carouselBike,
    ),
  CarouselItem(
    isImage: true,
    bikeImage: AppAssets.carouselBike,
    ),
  CarouselItem(
    isImage: true,
    bikeImage: AppAssets.carouselBike,
    ),
  CarouselItem(
    isImage: true,
    bikeImage: AppAssets.carouselBike,
    ),
  ];
  bool showYourOrders = false;
  List<Map> customData = [
    {'imageAsset': AppAssets.firstPackage, 'title' : 'SCP9374826473', 'subTitle' : 'In the process'},
    {'imageAsset': AppAssets.secondPackage, 'title' : 'SCP6653728497', 'subTitle' : 'In delivery'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Remove shadow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                    AppAssets.profilePic,
                ), // Replace with your image
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                AppAssets.notifications,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15),
            child: Text(
                    'Hello good Morning!',
                    style: TextStyle(
                      color: AppColors.headerTitleBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )),
              showYourOrders
              ? Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 280.h,
                          decoration: ShapeDecoration(
                            color: AppColors.appDefaultYellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Track Your Package',
                                style: TextStyle(
                                  color: AppColors.subTextBlue2,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  height: 2.0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              SizedBox(
                                width: 251.w,
                                child: Text(
                                  'Enter the receipt number that has\nbeen given by the officer',
                                  style: TextStyle(
                                    color: AppColors.subTextYellow2,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.h),
                          Container(
                              height: 56.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Enter the receipt number',
                                  border: OutlineInputBorder(), // Creates the outline border
                                  // Optional: Customize the appearance of the outline border
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.50.w, color: Color(0xFF031420)),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 0.50.w, color: Color(0xFF031420)),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                              ),
                            ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                child: AppButton(
                                  radius: 100.r,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Track Now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward_outlined, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    showYourOrders = true;
                                    setState(() {});
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Text(
                      'Tracking history',
                      style: TextStyle(
                        color: Color(0xFF2E3E5C),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.50,
                      ),
                    )),
                    Container(
                      height: 200,
                        child: ListView.builder(
                      itemCount: customData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed(
                                RouteKeys.trackingDetailsScreen,
                              arguments: {
                                  "trackingID":customData[index]["title"]
                              }
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  customData[index]["imageAsset"],
                                  width: 56.w,
                                  height: 56.h,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        customData[index]["title"],
                                        style: TextStyle(
                                          color: AppColors.titleBlue,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.28,
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        customData[index]["subTitle"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                    Icons.arrow_forward_ios_sharp,
                                  size: 12.14.sp,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                    )

                  ],
                ),
              )
              : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 33.h),
                CarouselSlider.builder(
                  itemCount: items.length,
                  options: CarouselOptions(
                    height: 265.h,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.7,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    onPageChanged: (index, reason) {
                      _current = int.parse(index.toString());
                      setState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: items[index],
                    );
                  },
                ),
                SizedBox(height: 30.h),
                DotsIndicator(
                  dotsCount: items.length,
                  position: _current,
                  decorator: DotsDecorator(
                      color: AppColors.dotsIndicatorDefault,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      activeShape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      size: Size(5, 5),
                      activeSize: Size(5, 5),
                      activeColor: Colors.black
                  ),
                ),
                SizedBox(height: 30.h),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 109.h,
                      decoration: BoxDecoration(color: AppColors.appDefaultYellow),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Gotten your\nE-Bike yet?',
                            style: TextStyle(
                              color: AppColors.subText2Grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.50,
                            ),
                          ),
                        SizedBox(
                          width: 180.w,
                          child: AppButton(
                            radius: 100.r,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Your Orders',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                     letterSpacing: 0.50,
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Icon(Icons.arrow_forward_outlined, color: Colors.white,)
                                ],
                              ),
                            ),
                            onPressed: () {
                              showYourOrders = true;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Lottie.asset(
                      AppAssets.ninjaBiker,
                      width: 161.w,
                      height: 161.h,
                      fit: BoxFit.fill,
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
                          width: 166.w,
                           child: Text(
                            'You too can join our\nElite squad of E-bikers',
                            style: TextStyle(
                              color: AppColors.subText2Grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.50,
                            ),
                          ),
                        )
                    )
                  ],
                )

              ],
            )
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bottomNavBGColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.homeS,
              fit: BoxFit.cover,
            ),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.markey,
              fit: BoxFit.cover,
            ),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.cart,
              fit: BoxFit.cover,
            ),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.heart,
              fit: BoxFit.cover,
            ),
              label: ""
          ),
        ],
      ),
    );
  }
}