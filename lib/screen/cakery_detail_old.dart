// import 'package:flutter/material.dart';
// import 'package:flutter_cakery_shop_ui/components/grocery_item_tile.dart';
// import 'package:flutter_cakery_shop_ui/model/cart_model.dart';
// import 'package:flutter_cakery_shop_ui/screen/home_page.dart';
// import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
// import 'package:flutter_launch/flutter_launch.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';

// class CakeryDetail extends StatefulWidget {
  
//   final String assetPath;
//   final String cookieprice;
//   final String cookiename;

//   const CakeryDetail({
//     Key? key,
//     required this.assetPath,
//     required this.cookieprice,
//     required this.cookiename,
//   }) : super(key: key);
//   // const CakeryDetail({super.key});

//   @override
//   State<CakeryDetail> createState() => _CakeryDetailState();
// }

// class _CakeryDetailState extends State<CakeryDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color(0xFF545D68),
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text(
//           'Bakery detail',
//           style: TextStyle(
//             fontFamily: 'Varela',
//             fontSize: 24.0.sp,
//             fontWeight: FontWeight.bold,
//             color: const Color(0xFF545D68),
//           ),
//         ),
//         // actions: [
//         //   IconButton(
//         //     icon: const Icon(
//         //       Icons.notifications_none,
//         //       color: Color(0xFF545D68),
//         //     ),
//         //     onPressed: () {},
//         //   ),
//         // ],
//       ),

      
//       body: Column(
        
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 16.0.h),
//           Padding(
//             padding: EdgeInsets.only(left: 16.0.sp),
//             child: Text(
//               'Our dessert',
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 40.0.sp,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xFFF17532),
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0.h),
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 16.sp,
//             ),
//             // child: Hero(
//             //   tag: assetPath,
//             //   child: Container(
//             //     height: 200.h,
//             //     width: 200.w,
//             //     decoration: BoxDecoration(
//             //       borderRadius: BorderRadius.circular(32.sp),
//             //       image: DecorationImage(
//             //         fit: BoxFit.cover,
//             //         image: AssetImage(assetPath),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//           ),
//           SizedBox(height: 16.0.h),
//           // Center(
//           //   child: Text(
//           //     'THB $cookieprice',
//           //     style: TextStyle(
//           //       fontFamily: 'Varela',
//           //       fontSize: 20.0.sp,
//           //       fontWeight: FontWeight.bold,
//           //       color: const Color(0xFFF17532),
//           //     ),
//           //   ),
//           // ),
//           SizedBox(height: 16.0.sp),
//           // Center(
//           //   child: Text(
//           //     cookiename,
//           //     style: TextStyle(
//           //         color: const Color(0xFF575E67),
//           //         fontFamily: 'Varela',
//           //         fontSize: 24.0.sp),
//           //   ),
//           // ),
//           SizedBox(height: 16.0.sp),
//           Center(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width - 52.0,
//               child: Text(
//                 '...add more detail',
//                 maxLines: 4,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'Varela',
//                   fontSize: 16.0.sp,
//                   color: const Color(0xFFB4B8B9),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0.h),

//           // get add to cart button
//           Expanded(
//             // onTap: () => Navigator.pushReplacement(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) {
//             //       return HomePage();
//             //     },
//             //   ),
//             // ),
//             child: Consumer<CartModel>(
//               builder: (context, value, child) {
//                 return GridView.builder(
//                   padding: const EdgeInsets.all(12),
//                   // physics: const NeverScrollableScrollPhysics(),
//                   itemCount: value.shopItems.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 1 / 1.2,
//                   ),
//                   itemBuilder: (context, index) {
//                     return GroceryItemTile(
//                       itemName: value.shopItems[index][0],
//                       itemPrice: value.shopItems[index][1],
//                       imagePath: value.shopItems[index][2],
//                       color: value.shopItems[index][3],
//                       onPressed: () =>
//                           Provider.of<CartModel>(context, listen: false)
//                               .addItemToCart(index),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),

//           SizedBox(height: 28.0.h),
//         ],
//       ),
//       bottomNavigationBar: const NavbarWidget(),

//     );
//   }
// }


// // class CakeryDetail extends StatelessWidget {
//   // final String assetPath;
//   // final String cookieprice;
//   // final String cookiename;

//   // const CakeryDetail({
//   //   Key? key,
//   //   required this.assetPath,
//   //   required this.cookieprice,
//   //   required this.cookiename,
//   // }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //       // appBar: AppBar(
// //       //   backgroundColor: Colors.white,
// //       //   elevation: 0.0,
// //       //   centerTitle: true,
// //       //   leading: IconButton(
// //       //     icon: const Icon(
// //       //       Icons.arrow_back,
// //       //       color: Color(0xFF545D68),
// //       //     ),
// //       //     onPressed: () {
// //       //       Navigator.of(context).pop();
// //       //     },
// //       //   ),
// //       //   title: Text(
// //       //     'Bakery detail',
// //       //     style: TextStyle(
// //       //       fontFamily: 'Varela',
// //       //       fontSize: 24.0.sp,
// //       //       fontWeight: FontWeight.bold,
// //       //       color: const Color(0xFF545D68),
// //       //     ),
// //       //   ),
// //       //   // actions: [
// //       //   //   IconButton(
// //       //   //     icon: const Icon(
// //       //   //       Icons.notifications_none,
// //       //   //       color: Color(0xFF545D68),
// //       //   //     ),
// //       //   //     onPressed: () {},
// //       //   //   ),
// //       //   // ],
// //       // ),

// //       body: ListView(
// //         children: [
// //           SizedBox(height: 16.0.h),
// //           Padding(
// //             padding: EdgeInsets.only(left: 16.0.sp),
// //             child: Text(
// //               'Our dessert',
// //               style: TextStyle(
// //                 fontFamily: 'Varela',
// //                 fontSize: 40.0.sp,
// //                 fontWeight: FontWeight.bold,
// //                 color: const Color(0xFFF17532),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 16.0.h),
// //           Padding(
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 16.sp,
// //             ),
// //             child: Hero(
// //               tag: assetPath,
// //               child: Container(
// //                 height: 200.h,
// //                 width: 200.w,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(32.sp),
// //                   image: DecorationImage(
// //                     fit: BoxFit.cover,
// //                     image: AssetImage(assetPath),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 16.0.h),
// //           Center(
// //             child: Text(
// //               'THB $cookieprice',
// //               style: TextStyle(
// //                 fontFamily: 'Varela',
// //                 fontSize: 20.0.sp,
// //                 fontWeight: FontWeight.bold,
// //                 color: const Color(0xFFF17532),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 16.0.sp),
// //           Center(
// //             child: Text(
// //               cookiename,
// //               style: TextStyle(
// //                   color: const Color(0xFF575E67),
// //                   fontFamily: 'Varela',
// //                   fontSize: 24.0.sp),
// //             ),
// //           ),
// //           SizedBox(height: 16.0.sp),
// //           Center(
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width - 52.0,
// //               child: Text(
// //                 '...add more detail',
// //                 maxLines: 4,
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   fontFamily: 'Varela',
// //                   fontSize: 16.0.sp,
// //                   color: const Color(0xFFB4B8B9),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 16.0.h),

// //           // get add to cart button
// //           Expanded(
// //             // onTap: () => Navigator.pushReplacement(
// //             //   context,
// //             //   MaterialPageRoute(
// //             //     builder: (context) {
// //             //       return HomePage();
// //             //     },
// //             //   ),
// //             // ),
// //             child: Consumer<CartModel>(
// //               builder: (context, value, child) {
// //                 return GridView.builder(
// //                   padding: const EdgeInsets.all(12),
// //                   // physics: const NeverScrollableScrollPhysics(),
// //                   itemCount: value.shopItems.length,
// //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                     crossAxisCount: 1,
// //                     childAspectRatio: 1 / 1.2,
// //                   ),
// //                   itemBuilder: (context, index) {
// //                     return GroceryItemTile(
// //                       itemName: value.shopItems[index][0],
// //                       itemPrice: value.shopItems[index][1],
// //                       imagePath: value.shopItems[index][2],
// //                       color: value.shopItems[index][3],
// //                       onPressed: () =>
// //                           Provider.of<CartModel>(context, listen: false)
// //                               .addItemToCart(index),
// //                     );
// //                   },
// //                 );
// //               },
// //             ),
// //           ),

// //           SizedBox(height: 28.0.h),
// //         ],
// //       ),
// //       bottomNavigationBar: const NavbarWidget(),
// //     );
// //   }
// // }

