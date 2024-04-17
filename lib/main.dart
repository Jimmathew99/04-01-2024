// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // //
// // // main() {
// // //   runApp(const MyApp());
// // // }
// // //
// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ScreenUtilInit(
// // //       splitScreenMode: true,
// // //       minTextAdapt: true,
// // //       designSize: const Size(360, 690),
// // //       builder: (context, child) {
// // //         return const MaterialApp();
// // //       },
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_sample/view/spalsh_screen.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // main(){
// //   runApp(const MyApp());
// // }
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ScreenUtilInit(
// //       splitScreenMode: true,
// //       minTextAdapt: true,
// //       designSize: const Size(360, 690),
// //       builder: (context, child) {
// //         return const MaterialApp(
// //           home: SplashScreen(),
// //         );
// //       },
// //     );
// //   }
// // }
// //
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const ScreenUtilInit(
//       designSize: Size(360, 960),
//       minTextAdapt: true,
//       splitScreenMode: true,
//
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_sample/view/04-05-2024/registration_screen.dart';
import 'package:flutter_sample/view/04-05-2024/text_sample.dart';
import 'package:flutter_sample/view/04-05-2024/textfield_sample.dart';
import 'package:flutter_sample/view/04-06-2024/button.dart';
import 'package:flutter_sample/view/04-06-2024/login_screen.dart';
import 'package:flutter_sample/view/04-08-2024/card_sample.dart';
import 'package:flutter_sample/view/04-08-2024/card_sample2.dart';
import 'package:flutter_sample/view/04-08-2024/checkbox_sample.dart';
import 'package:flutter_sample/view/04-08-2024/inkwell_sample.dart';
import 'package:flutter_sample/view/04-08-2024/radio_sample.dart';
import 'package:flutter_sample/view/04-09-2024/first_.dart';
import 'package:flutter_sample/view/04-09-2024/form_sample.dart';
import 'package:flutter_sample/view/04-17-2024/gridview_sample.dart';
import 'package:flutter_sample/view/04-17-2024/table_sample.dart';
import 'package:flutter_sample/view/04-17-2024/torch_sample.dart';
import 'package:flutter_sample/view/first_page.dart';
import 'package:flutter_sample/view/spalsh_screen.dart';
import 'package:flutter_sample/view/splash_screendemo.dart';
import 'package:flutter_sample/view/welcome_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       builder: (context, child) {
         return MaterialApp(
           home:GridViewSample()
         );
       },
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,



    );



  }
}
