import 'dart:async';
import 'package:e_bikes/presentation/navigation/keys.dart';
import 'package:e_bikes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'presentation/navigation/app_router.dart';
import 'utils/images.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  runZonedGuarded<Future<void>>(() async {
    runApp(const MyApp());
  }, (error, stackTrace) async {});
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, _) {
        return GlobalLoaderOverlay(
          overlayColor: AppColors.appOverlay.withOpacity(.5),
          useDefaultLoading: false,
          disableBackButton: true,
          overlayWidget: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 56.w,
                  width: 56.w,
                  padding: EdgeInsets.all(20.w),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 56.w,
                  width: 56.w,
                  padding: EdgeInsets.all(15.w),
                  child: Image.asset(
                    AppAssets.loader,
                    height: 50.w,
                    width: 50.w,
                  ),
                )
              ],
            ),
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            navigatorObservers: [],
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: RouteKeys.splash,
            navigatorKey: navigatorKey,
          ),
        );
      },
    );
  }
}
