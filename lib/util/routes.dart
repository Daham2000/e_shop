
import 'package:e_shop/ui/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  Routes._();

  static const LOGIN_ROUTE = "login";
  static const HOME_ROUTE = "home";

  static final homePage = HomeProvider();

  static Route generator(RouteSettings settings) {
    switch (settings.name) {
      case HOME_ROUTE:
        return MaterialPageRoute(builder: (context) => homePage);
    }
  }
}
