import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:it_network/presentation/screens/ubntCategory/add_p2p_access_point_screen.dart';
import 'strings_manager.dart';

class RoutesManager{
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String addP2PAccessPointRoute = "/addP2PAccessPointRoute";
  static const String addP2PStationRoute = "/addP2PStationRoute";
  static const String addP2MPAccessPointRoute = "/addP2MPAccessPointRoute";
  static const String addP2MPStationRoute = "/addP2MPStationRoute";

}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name){
      case RoutesManager.addP2PAccessPointRoute :
        return MaterialPageRoute(builder: (_) => AddP2PAccessPointScreen());

      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text(AppStrings.noRouteFound.tr()),),
        body: Center(child: Text(AppStrings.noRouteFound.tr()),),
      );
    });
  }
}