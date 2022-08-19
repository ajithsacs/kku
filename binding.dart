import 'package:get/get.dart';
import 'package:mythings_app/demo/splash/splashcontroller.dart';

class Spalshbinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<SplashControllers>(() =>SplashControllers() ,fenix: true);
  }
  
}