import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mythings_app/demo/approute.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppPath.initialpath,
    debugShowCheckedModeBanner: false,
    getPages: AppPath.route,
  ));
}

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

// class MysplashScreenView extends GetView<SplashController> {
//   const MysplashScreenView({Key? key}) : super(key: key);
//    @override

   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: splashOutline(),
//     );
//   }
// }

// splashOutline() {
//   return Column(
//     children: [
//       splashimage(),
//       splashText(),
//     ],
//   );
// }

// splashimage() {
//   return Expanded(
//     child: Padding(
//       padding: const EdgeInsets.all(45),
//       child: Image.asset(AppAssets.appLogo),
//     ),
//     flex: 5,
//   );
// }

// splashText() {
//   return Expanded(
//     child: Center(
//       child: Column(
//         children: [
//           Text(
//             mythings,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//           ),
//           splasSubTest()
//         ],
//       ),
//     ),
//     flex: 1,
//   );
// }

// splasSubTest() {
//   return Expanded(flex: 1, child: Text(yourlifeinoneplace));
// }
// // class MysplashScreen extends StatefulWidget {
// //   const MysplashScreen({Key? key}) : super(key: key);

// //   @override
// //   State<MysplashScreen> createState() => _MysplashScreenState();
// // }

// // class _MysplashScreenState extends State<MysplashScreen> {
// //   @override
// //   void initState() {
// //     Timer(const Duration(seconds: 5), () {
// //       Get.off( MyNewFormState());
// //       // MycardScreen());
// //     });
// //     super.initState();
// //     SystemChrome.setPreferredOrientations(
// //         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: splashOutline(),
// //     );
// //   }

 
// // }
