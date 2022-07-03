import 'package:flutter/material.dart';
import 'package:travo_app_source/core/constants/color_palatte.dart';
import 'package:travo_app_source/core/constants/constants.dart';
import 'package:travo_app_source/core/constants/textstyle_ext.dart';

class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget({Key? key, required this.data, this.onTap}) : super(key: key);

  final String data;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMediumPadding),
          gradient: Gradients.defaultGradientBackground,
        ),
        alignment: Alignment.center,
        child: Text(
          data,
          style: TextStyles.defaultStyle.whiteTextColor.bold,
        ),
      ),
    );
  }
}
