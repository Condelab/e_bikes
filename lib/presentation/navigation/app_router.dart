import 'package:e_bikes/presentation/navigation/keys.dart';
import 'package:e_bikes/presentation/screens/home.dart';
import 'package:e_bikes/presentation/screens/splash.dart';
import 'package:e_bikes/presentation/screens/trackingDetails.dart';
import 'package:flutter/material.dart';

import '../screens/login.dart';

class AppRouter {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    String routeName = settings.name ?? '';

    switch (routeName) {
      case RouteKeys.splash:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());
      case RouteKeys.login:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const LoginScreen());
      case RouteKeys.home:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const HomeScreen());
      case RouteKeys.trackingDetailsScreen:
        Map? args = settings.arguments as Map?;
        return MaterialPageRoute(
            settings: settings, builder: (_) => TrackingDetailsScreen(trackingID: args?['trackingID']));
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => _ErrorScreen(routeName: routeName));
    }

  }

}


class _ErrorScreen extends StatelessWidget {
  final String routeName;
  const _ErrorScreen({Key? key, required this.routeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Route '$routeName' does not exist"),
      ),
    );
  }
}
