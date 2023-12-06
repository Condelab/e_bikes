import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_bikes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CarouselItem extends StatelessWidget {
  final bool isImage;
  final String? bikeImage;
  final String? title;
  final String? subtitle;


  CarouselItem(
      { this.bikeImage, required this.isImage, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    if (bikeImage != null) {
      return Stack(
        children: [
          Container(
            width: 255.h,
            height: 265.h,
            decoration: ShapeDecoration(
              color: AppColors.bottomNavBGColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Image.asset(
              bikeImage!,
              width: 199.h,
              height: 229.h,
              fit: BoxFit.contain,
            ),
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, height: 1.5.h),
          ),
          SizedBox(height: 8),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: AppColors.subTextYellow, height: 1.5.h),
          ),
        ],
      );
    }

  }
}