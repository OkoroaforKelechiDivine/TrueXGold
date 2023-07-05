import 'dart:async';

import 'package:get/get.dart';
import 'package:truexgold/src/screens/others/Splash.dart';

class SplashController extends GetxController{
  
  @override
  void onInit(){
    super.onInit();
    // TODO: implement onInit
    Timer(const Duration(milliseconds: 4000), (){
      Get.off(() => const SplashScreen());
    });
  }
}