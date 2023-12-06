import 'package:e_bikes/utils/colors.dart';
import 'package:e_bikes/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingDetailsScreen extends StatefulWidget {
  final String? trackingID;
  const TrackingDetailsScreen({Key? key, this.trackingID}) : super(key: key);

  @override
  State<TrackingDetailsScreen> createState() => _TrackingDetailsScreenState();
}

class _TrackingDetailsScreenState extends State<TrackingDetailsScreen> {
  @override
  void initState() {
    //_showBottomSheet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bottom Sheet Example',
        home: Scaffold(
          bottomSheet: DraggableScrollableSheet(
            expand: false,
            minChildSize: 0.15,
            maxChildSize: 0.8,
            builder: (BuildContext context, myScrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35.r), // Customize top edge radius
                  ),
                ),
                child: ListView(
                  controller: myScrollController,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Center(
                        child: Container(
                          width: 48,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: AppColors.bottomNavBGColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Estimate arrives in',
                                  style: TextStyle(
                                    color: Color(0xFF7A809D),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  '2h 40m',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF2E3E5C),
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '..',
                              style: TextStyle(
                                color: Color(0xFF2E3E5C),
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.04,
                                letterSpacing: 0.50,
                              ),
                            )
                          ],
                        )),

                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Stack(
                          children: [
                            Container(
                              width: 327,
                              height: 238,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFD337),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 10.h),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sukabumi, Indonesia',
                                            style: TextStyle(
                                              color: Color(0xFF2E3E5C),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Text(
                                            'No receipt : SCP6653728497',
                                            style: TextStyle(
                                              color: Color(0xFF95823C),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                          Divider(color: Colors.grey.withOpacity(0.5))
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10.h),
                                        child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2,50 USD',
                                          style: TextStyle(
                                            color: Color(0xFF2E3E5C),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        Text(
                                          'Postal fee',
                                          style: TextStyle(
                                            color: Color(0xFF95823C),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        Divider(color: Colors.grey.withOpacity(0.5))
                                      ],
                                    )),
                                    Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bali, Indonesia',
                                          style: TextStyle(
                                            color: Color(0xFF2E3E5C),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        Text(
                                          'Parcel, 24kg',
                                          style: TextStyle(
                                            color: Color(0xFF95823C),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        Divider(color: Colors.grey.withOpacity(0.5))
                                      ],
                                    )),
                                  ],
                                )),
                          ],
                        ))

                    // Expanded(
                    //   child: ListView.builder(
                    //     //controller: myscrollController,
                    //     itemCount: 4,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return ListTile(
                    //           title: Text(
                    //         'Item $index',
                    //         style: TextStyle(color: Colors.black),
                    //       ));
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          ),
          body: Stack(
            children: [
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.mapBackground,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.map),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Image.asset(AppAssets.mapPath),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 100.h),
                  Center(
                    child: Container(
                      width: 327.w,
                      height: 88.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 327.w,
                              height: 88.h,
                              decoration: ShapeDecoration(
                                color: AppColors.appDefaultYellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(46.r),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            top: 16.h,
                            child: Container(
                              width: 295.w,
                              height: 56.h,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 295.w,
                                    height: 56.h,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: AppColors.subTextBlue2),
                                        borderRadius:
                                            BorderRadius.circular(28.r),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      widget.trackingID ?? "",
                                      style: TextStyle(
                                        color: AppColors.subTextBlue2,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
