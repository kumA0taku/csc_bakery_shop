import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/data/cake.dart';
import 'package:flutter_cakery_shop_ui/screen/cakery_detail.dart';
import 'package:flutter_cakery_shop_ui/screen/cart_page.dart';
import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowQRcode extends StatefulWidget {
  const ShowQRcode({super.key});

  @override
  State<ShowQRcode> createState() => _ShowQRcodeState();
}

class _ShowQRcodeState extends State<ShowQRcode> {
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
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return CartPage();
            }));
          },
        ),
        title: Text(
          'CSC Bakery',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF545D68),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        children: [
          SizedBox(height: 8.0.h),
          Center(
            child: Text('Please Scan..',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 35.0.sp,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 8.0.h),
          Padding(
            padding: const EdgeInsets.only(
              left: 100.0,
              right: 100.0,
              top: 120,
              bottom: 20,
            ),
            child: Image.asset('assets/temp_qrcode.png'),
          ),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
