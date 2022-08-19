import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mythings_app/app/constants/app.assets.dart';
import 'package:mythings_app/demo/splash/splashcontroller.dart';

import '../string_const.dart';

class MysplashScreenView extends GetView<SplashControllers> {
   MysplashScreenView({Key? key}) : super(key: key);
  final SplashControllers _controllers =SplashControllers();
  _controllers.init();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashOutline(),

    );
  }
}

splashOutline() {
  return Column(
    children: [
      splashimage(),
      splashText(),
    ],
  );
}

splashimage() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(45),
      child: Image.asset(AppAssets.appLogo),
    ),
    flex: 5,
  );
}

splashText() {
  return Expanded(
    child: Center(
      child: Column(
        children: [
          Text(
            Appconst.mythings,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          splasSubTest()
        ],
      ),
    ),
    flex: 1,
  );
}

splasSubTest() {
  return Expanded(flex: 1, child: Text(Appconst.yourlifeinoneplace));
}
// class MysplashScreen extends StatefulWidget {
//   const MysplashScreen({Key? key}) : super(key: key);

//   @override
//   State<MysplashScreen> createState() => _MysplashScreenState();
// }

// class _MysplashScreenState extends State<MysplashScreen> {
//   @override
//   void initState() {
//     Timer(const Duration(seconds: 5), () {
//       Get.off( MyNewFormState());
//       // MycardScreen());
//     });
//     super.initState();
//     SystemChrome.setPreferredOrientations(
//         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: splashOutline(),
//     );
//   }

 
// }
