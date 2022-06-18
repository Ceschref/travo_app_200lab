// import 'package:crm_app/core/constants/constants_size.dart';
// import 'package:crm_app/core/extensions/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

import '../constants/color_palatte.dart';
import '../constants/constants.dart';

enum SkeletonType {
  lead,
  option,
}

extension IsSkeletonTypeLead on SkeletonType {
  bool get isSkeletonTypeLead {
    return this == SkeletonType.lead;
  }
}

class SkeletonForList extends StatelessWidget {
  const SkeletonForList({Key? key, this.counterSkeleton = 10, this.type = SkeletonType.lead}) : super(key: key);

  final int counterSkeleton;
  final SkeletonType type;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SkeletonLoader(
        builder: Container(
          padding: EdgeInsets.symmetric(
            horizontal: type.isSkeletonTypeLead ? kDefaultPadding : 0,
            vertical: kItemPadding,
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: type.isSkeletonTypeLead ? 30 : 10,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 10,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        items: counterSkeleton,
        period: const Duration(seconds: 2),
        highlightColor: ColorPalette.dividerColor,
        direction: SkeletonDirection.ltr,
      ),
    );
  }
}
