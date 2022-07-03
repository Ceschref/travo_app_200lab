import 'package:flutter/material.dart';
import 'package:travo_app_source/data/model/hotel_model.dart';
import 'package:travo_app_source/representation/screen/detail_hotel_screen.dart';
import 'package:travo_app_source/representation/screen/hotel_booking_screen.dart';
import 'package:travo_app_source/representation/screen/hotels_screen.dart';
import 'package:travo_app_source/representation/screen/intro_screen.dart';
import 'package:travo_app_source/representation/screen/main_app.dart';

final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => MainApp(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
  HotelsScreen.routeName: (context) => HotelsScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailHotelScreen.routeName:
      final HotelModel hotelModel = (settings.arguments as HotelModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailHotelScreen(
          hotelModel: hotelModel,
        ),
      );
    default:
      return null;
  }
}
