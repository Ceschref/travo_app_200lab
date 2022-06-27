import 'package:flutter/material.dart';
import 'package:travo_app_source/core/constants/constants.dart';
import 'package:travo_app_source/representation/widgets/app_bar_container.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({Key? key}) : super(key: key);

  static const String routeName = '/hotel_booling_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  Widget _buildItemHotelBooking(String title, Widget icon, Color color, String value) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kMediumPadding,
      ),
      child: Column(
        children: [],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      subTitleString: 'Choose your favorite hotel and enjoy the service',
      child: Container(),
    );
  }
}
