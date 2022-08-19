import 'package:get/get.dart';
import 'package:mythings_app/demo/card/introcard.dart';
import 'package:mythings_app/demo/form/new_form_data.dart';
import 'package:mythings_app/demo/splash/binding.dart';
import 'package:mythings_app/demo/splash/splashview.dart';

class AppPath {
  AppPath._();
  static const initialpath = "/splash";
  static final route = [
    GetPage(
      name: '/splash',
      page: () => const MysplashScreenView(),
      binding: Spalshbinding(),
    ),
    GetPage(
      name: '/page1',
      page: () => MyNewFormState(),
    ),
    GetPage(name:'/card', page:()=> IntroCard() ),
  ];
}
