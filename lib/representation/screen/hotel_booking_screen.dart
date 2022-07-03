import 'package:flutter/material.dart';
import 'package:travo_app_source/core/constants/constants.dart';
import 'package:travo_app_source/core/helpers/asset_helper.dart';
import 'package:travo_app_source/representation/screen/hotels_screen.dart';
import 'package:travo_app_source/representation/widgets/app_bar_container.dart';
import 'package:travo_app_source/representation/widgets/item_button_widget.dart';
import 'package:travo_app_source/representation/widgets/item_hotel_booking.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({Key? key}) : super(key: key);

  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      subTitleString: 'Choose your favorite hotel and enjoy the service',
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemHotelBookingWidget(
              title: 'Destination',
              value: 'South Korea',
              icon: AssetHelper.icoLocation,
            ),
            ItemHotelBookingWidget(
              title: 'Select Date',
              value: '13 Feb - 18 Feb 2022',
              icon: AssetHelper.icoCalendal,
            ),
            ItemHotelBookingWidget(
              title: 'Guest and Room',
              value: '2 Guest, 1 Room',
              icon: AssetHelper.icoBed,
            ),
            ItemButtonWidget(
              data: 'Search',
              onTap: () {
                Navigator.of(context).pushNamed(HotelsScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
