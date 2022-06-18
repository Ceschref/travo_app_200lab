import 'package:flutter/material.dart';
import 'package:travo_app_source/core/helpers/asset_helper.dart';
import 'package:travo_app_source/core/helpers/image_helper.dart';
import 'package:travo_app_source/core/helpers/local_storage_helper.dart';
import 'package:travo_app_source/representation/screen/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _routeToIntroScreen();
    LocalStorageHelper.setValue('ignoreIntro', true);
  }

  void _routeToIntroScreen() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    Navigator.of(context).pushNamed(IntroScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              AssetHelper.backgroundSplash,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              AssetHelper.circleSplash,
            ),
          ),
        ],
      ),
    );
  }
}
