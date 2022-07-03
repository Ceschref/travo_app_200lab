import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xff6155CC);
  static const Color secondColor = Color(0xff8F67E8);

  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color text1Color = Color(0xFF323B4B);
  static const Color subTitleColor = Color(0xFF838383);
  static const Color kBorderColor = Color(0xFFD1D5DB);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);

  static const Color textSuccessColor = Color(0xFF10B981);
  static const Color textErrorColor = Color(0xFFEF4444);
  static const BoxShadow kBoxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.1),
    offset: Offset(-4, 0),
    blurRadius: 5,
    spreadRadius: 2,
  );

  static const Color greenButtonColor = Color(0xff059669);
  static const Color shimmerBaseColor = Color(0xFFC1C7D0);
  static const Color shimmerHighlightColor = Color(0xFFF9FAFB);

  static const List<Color> collectionColor = [
    Color(0xFFFBBF24),
    Color(0xFFF43F5E),
    Color(0xFF0EA5E9),
    Color(0xFF8B5CF6),
    Color(0xFFF97316),
    Color(0xFF10B981),
    Color(0xFF06B6D4),
    Color(0xFFEF4444),
    Color(0xFFEC4899),
  ];
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.secondColor,
      ColorPalette.primaryColor,
    ],
  );
}
