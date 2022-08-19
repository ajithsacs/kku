import 'dart:async';
import 'package:get/get.dart';

class SplashControllers extends GetxController {
  init() async {
    Timer(const Duration(seconds: 3), () {
      Get.off("/page1");   
    });
  }
}
