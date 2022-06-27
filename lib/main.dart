import 'package:flutter/material.dart';
import 'package:travo_app_source/core/constants/color_palatte.dart';
import 'package:travo_app_source/core/helpers/local_storage_helper.dart';
import 'package:travo_app_source/representation/screen/slpash_screen.dart';
import 'package:travo_app_source/routes.dart';

import 'core/helpers/size_config.dart';

void main() {
  runApp(const TravoApp());
}

class TravoApp extends StatelessWidget {
  const TravoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          final ignoreIntro = LocalStorageHelper.getValue('ignoreIntro') as bool?;
          return const SplashScreen();
        },
      ),
    );
  }
}
