import 'package:e_bikes/presentation/navigation/keys.dart';
import 'package:e_bikes/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      //reroute after 2 seconds
      Navigator.of(context).pushReplacementNamed(RouteKeys.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(
        AppAssets.background,
        width: 375.w,
        height: 812.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
