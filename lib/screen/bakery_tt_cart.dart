import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BakeryTTCart extends StatelessWidget {
  // final String assetPath;
  // final String cookieprice;
  // final String cookiename;

  const BakeryTTCart({
    Key? key,
    // required this.assetPath,
    // required this.cookieprice,
    // required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Total Cart',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0.sp,
            color: const Color(0xFF545D68),
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       Icons.notifications_none,
        //       color: Color(0xFF545D68),
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 16.0.h),
          Padding(
            padding: EdgeInsets.only(left: 16.0.sp),
            child: Text(
              'total cart',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 40.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),

          SizedBox(height: 16.0.h),
          SizedBox(height: 16.0.h),
          SizedBox(height: 16.0.sp),
          SizedBox(height: 16.0.sp),
          SizedBox(height: 16.0.h),
          SizedBox(height: 28.0.h),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
