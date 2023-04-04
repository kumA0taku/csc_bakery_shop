import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/home.dart';
import 'package:flutter_cakery_shop_ui/model/cart_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

/**--- test main ---- */
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ChangeNotifierProvider(
          // debugShowCheckedModeBanner: false,
          // title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          // home: const Home(),
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
        );
      },
    );
  }

  /*----current main----*/
  // @override
  // Widget build(BuildContext context) {
  //   return ScreenUtilInit(
  //     designSize: const Size(360, 690),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: (context, child) {
  //       return MaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         title: 'Flutter Demo',
  //         theme: ThemeData(
  //           primarySwatch: Colors.blue,
  //         ),
  //         home: const Home(),
  //       );
  //     },
  //   );
  // }
}
