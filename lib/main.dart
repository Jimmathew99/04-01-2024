// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       splitScreenMode: true,
//       minTextAdapt: true,
//       designSize: const Size(360, 690),
//       builder: (context, child) {
//         return const MaterialApp();
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_sample/view/spalsh_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360, 690),
      builder: (context, child) {
        return const MaterialApp(
          home: SplashScreen(),
        );
      },
    );
  }
}
