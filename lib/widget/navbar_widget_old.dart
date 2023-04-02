// import 'package:flutter/material.dart';
// import 'package:flutter_cakery_shop_ui/home.dart';
// import 'package:flutter_cakery_shop_ui/screen/bakery_tt_cart.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NavbarWidget extends StatelessWidget {
//   const NavbarWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       clipBehavior: Clip.antiAlias,
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 8,
//       color: Colors.transparent,
//       elevation: 10,
//       child: Container(
//         height: 50.0.h,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25.0.r),
//             topRight: Radius.circular(25.0.r),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: 50.0.h,
//               width: MediaQuery.of(context).size.width / 2 - 40.0.w,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
//                 children: <Widget>  [
//                   Icon(
//                     Icons.home,
//                     color: Color(0xFFEF7532),
//                   ),
//                   // Icon(
//                   //   Icons.search,
//                   //   color: Color(0xFF676E79),
//                   // )

                  
//               IconButton(
//                 iconSize: 30.0,
//                 padding: EdgeInsets.only(left: 28.0),
//                 icon: Icon(Icons.shopping_basket_outlined),
//                 onPressed: () {

                  
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return Home( )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 50.0.h,
//               width: MediaQuery.of(context).size.width / 2 - 40.0.w,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
//                 children: <Widget> [
//                   // IconButton(
//                   //   child: Icon(
//                   //     Icons.shopping_basket_outlined,
//                   //     color: Color(0xFF676E79), 
//                   //   ),
//                   // ), 
                  
//               IconButton(
//                 iconSize: 30.0,
//                 padding: EdgeInsets.only(left: 28.0),
//                 icon: Icon(Icons.shopping_basket_outlined),
//                 onPressed: () {

//                   // setState(() {
//                   //   _myPage.jumpToPage(0);
//                   // });
                  
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return BakeryTTCart(
//               // assetPath: cake.imageUrl,
//               // cookieprice: cake.price,
//               // cookiename: cake.name,
//             );
//           }));
//                 },
//               ),
                  
//                   // Icon(
//                   //   Icons.person_outline,
//                   //   color: Color(0xFF676E79),
//                   // )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
