import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:truexgold/src/screens/others/Splash.dart';

import '../config/manager/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(microseconds: 20),
      debugShowCheckedModeBanner: false,
      title: 'Edge',
      theme: getApplicationTheme(),
      home: const SplashScreen(),
    );
  }
}