import 'package:flutter/cupertino.dart';

abstract class Routes{
  Routes._();

  static const LOGIN_ROUTE = "login";
  static const HOME_ROUTE = "home";

  static Routes genarator(RouteSettings settings){
    switch(settings.name){

    }
  }
}