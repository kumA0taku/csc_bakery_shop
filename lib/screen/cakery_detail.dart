import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeryDetail extends StatelessWidget {
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const CakeryDetail({
    Key? key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
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
          'Bakery detail',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0.sp,
            fontWeight: FontWeight.bold,
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
              'Our dessert',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 40.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16.0.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.sp,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 200.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.sp),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0.h),
          Center(
            child: Text(
              'THB $cookieprice',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16.0.sp),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                  color: const Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0.sp),
            ),
          ),
          SizedBox(height: 16.0.sp),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52.0,
              child: Text(
                '...add more detail',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0.sp,
                  color: const Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0.h),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 220.0.w,
              height: 52.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0.sp),
                color: const Color(0xFFF17532),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    // await FlutterLaunch.launchWhatsapp(
                    //   phone: '6285640899224',
                    //   message:
                    //       'Hi Bahri Cakery,Saya mau order $cookiename untuk hari ini, apa bisa diantar kerumah?',
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.bagShopping,
                        size: 22.sp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Buy',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      // MaterialButton(
                      //   onPressed: () {},
                      //   color: Colors.black,
                      //   child: Text(
                      //     '\$',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 40, left: 22),
          //   child: Row(
          //     children: [
          //       Container(
          //         padding: EdgeInsets.all(2),
          //         decoration: BoxDecoration(
          //           color: Color(0xFFF17532),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Icon(
          //           Icons.arrow_drop_down_rounded,
          //           color: Colors.white,
          //           size: 40,
          //         ),
          //       ),

          //       Container(
          //         padding: EdgeInsets.all(2),
          //         decoration: BoxDecoration(
          //           color: Color(0xFFF17532),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Icon(
          //           Icons.arrow_drop_up_rounded,
          //           color: Colors.white,
          //           size: 40,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 28.0.h),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
