import 'package:flutter/material.dart';
import 'package:travo_app_source/representation/screen/hotel_booking_screen.dart';
import 'package:travo_app_source/representation/screen/intro_screen.dart';
import 'package:travo_app_source/representation/screen/main_app.dart';

final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => MainApp(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    default:
      return null;
  }
}
