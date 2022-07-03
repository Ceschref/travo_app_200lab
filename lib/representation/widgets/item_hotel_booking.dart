import 'package:flutter/material.dart';
import 'package:travo_app_source/core/constants/constants.dart';
import 'package:travo_app_source/core/constants/textstyle_ext.dart';
import 'package:travo_app_source/core/helpers/image_helper.dart';

class ItemHotelBookingWidget extends StatelessWidget {
  const ItemHotelBookingWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kTopPadding),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: kMediumPadding),
      child: Row(
        children: [
          ImageHelper.loadFromAsset(
            icon,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.defaultStyle.fontCaption,
              ),
              SizedBox(
                height: kMinPadding,
              ),
              Text(
                value,
                style: TextStyles.defaultStyle.bold,
              ),
            ],
          )
        ],
      ),
    );
  }
}
