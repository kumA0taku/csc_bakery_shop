// import 'package:flutter/material.dart';
// import 'package:flutter_cakery_shop_ui/components/grocery_item_tile.dart';
// import 'package:flutter_cakery_shop_ui/model/cart_model.dart';
// import 'package:flutter_cakery_shop_ui/screen/cakery_detail.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_cakery_shop_ui/screen/home_page.dart';
// import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
// import 'package:flutter_launch/flutter_launch.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';

// import '../data/cake.dart';

// class MyShop extends StatefulWidget {
//   final String assetPath;
//   final String cookieprice;
//   final String cookiename;

//   // const MyShop({
//   //   Key? key,
//   //   required this.assetPath,
//   //   required this.cookieprice,
//   //   required this.cookiename,
//   // }) : super(key: key);

//   const MyShop(
//       {super.key,
//       required this.assetPath,
//       required this.cookieprice,
//       required this.cookiename});

//   @override
//   State<MyShop> createState() => _MyShopState();
// }

// class _MyShopState extends State<MyShop> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         // leading: IconButton(
//         //   // icon: const Icon(
//         //   //   Icons.arrow_back,
//         //   //   color: Color(0xFF545D68),
//         //   // ),
//         //   // onPressed: () {
//         //   //   Navigator.of(context).pop();
//         //   // },
//         // ),
//         // title: Text(
//         //   'Bakery detail',
//         //   style: TextStyle(
//         //     fontFamily: 'Varela',
//         //     fontSize: 24.0.sp,
//         //     fontWeight: FontWeight.bold,
//         //     color: const Color(0xFF545D68),
//         //   ),
//         // ),
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
//           // SizedBox(height: 16.0.h),
//           Padding(
//             padding: EdgeInsets.only(left: 16.0.sp),
//             child: Text(
//               'Please select your love♥',
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 40.0.sp,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xFFF17532),
//               ),
//             ),
//           ),
//           // SizedBox(height: 16.0.h),
//           // Padding(
//           //   padding: EdgeInsets.symmetric(
//           //     horizontal: 16.sp,
//           //   ),
//           //   // child: Hero(
//           //   //   tag: assetPath,
//           //   //   child: Container(
//           //   //     height: 200.h,
//           //   //     width: 200.w,
//           //   //     decoration: BoxDecoration(
//           //   //       borderRadius: BorderRadius.circular(32.sp),
//           //   //       image: DecorationImage(
//           //   //         fit: BoxFit.cover,
//           //   //         image: AssetImage(assetPath),
//           //   //       ),
//           //   //     ),
//           //   //   ),
//           //   // ),
//           // ),
//           // SizedBox(height: 16.0.h),
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
//           // SizedBox(height: 16.0.sp),
//           // Center(
//           //   child: Text(
//           //     cookiename,
//           //     style: TextStyle(
//           //         color: const Color(0xFF575E67),
//           //         fontFamily: 'Varela',
//           //         fontSize: 24.0.sp),
//           //   ),
//           // ),
//           // SizedBox(height: 16.0.sp),
//           // Center(
//           //   child: SizedBox(
//           //     width: MediaQuery.of(context).size.width - 52.0,
//           //     child: Text(
//           //       '...add more detail',
//           //       maxLines: 4,
//           //       textAlign: TextAlign.center,
//           //       style: TextStyle(
//           //         fontFamily: 'Varela',
//           //         fontSize: 16.0.sp,
//           //         color: const Color(0xFFB4B8B9),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(height: 16.0.h),

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


// // class CakeryPage2 extends StatelessWidget {
// //   const CakeryPage2({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFFCFAF8),
// //       body: Padding(
// //         padding: EdgeInsets.only(
// //           bottom: 80.sp,
// //         ),
// //         child: GridView.builder(
// //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //             crossAxisCount: 2,
// //             crossAxisSpacing: 8.sp,
// //             mainAxisSpacing: 8.sp,
// //             childAspectRatio: 0.7.sp,
// //           ),
// //           itemBuilder: (context, index) {
// //             return _buildCard(listCakes[index], context);
// //           },
// //           itemCount: 2,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildCard(
// //     Cake cake,
// //     context,
// //   ) {
// //     return Padding(
// //       padding: EdgeInsets.all(4.sp),
// //       child: InkWell(
// //         onTap: () {
// //           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
// //             return CakeryDetail(
// //               assetPath: cake.imageUrl,
// //               cookieprice: cake.price,
// //               cookiename: cake.name,
// //             );
// //           }));
// //         },
// //         child: Container(
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(16.0.r),
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.grey.withOpacity(0.2),
// //                 spreadRadius: 3.0,
// //                 blurRadius: 5.0,
// //               )
// //             ],
// //             color: Colors.white,
// //           ),
// //           child: ListView(
// //             physics: const NeverScrollableScrollPhysics(),
// //             children: [
// //               Padding(
// //                 padding: EdgeInsets.only(
// //                   right: 8.sp,
// //                   top: 8.sp,
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.end,
// //                   children: [
// //                     cake.isFavorite
// //                         ? const Icon(
// //                             Icons.favorite,
// //                             color: Color(0xFFEF7532),
// //                           )
// //                         : const Icon(
// //                             Icons.favorite_border,
// //                             color: Color(0xFFEF7532),
// //                           )
// //                   ],
// //                 ),
// //               ),
// //               Container(
// //                 height: 50.h,
// //                 width: 50.w,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(16.r),
// //                   image: DecorationImage(
// //                     image: AssetImage(cake.imageUrl),
// //                     fit: BoxFit.contain,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(height: 8.h),
              
// //               Center(
// //                 child: Text(
// //                   cake.name,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: TextStyle(
// //                       color: const Color(0xFF575E67),
// //                       fontFamily: 'Varela',
// //                       fontSize: 15.sp, 
// //                       fontWeight: FontWeight.bold),
// //                 ),
// //               ),
// //               // SizedBox(height: 8.h),
// //               // Center(
// //               //   child: Text(
// //               //     'Price: ${cake.price} THB',
// //               //     style: TextStyle(
// //               //         color: const Color(0xFFCC8053),
// //               //         fontFamily: 'Varela',
// //               //         fontSize: 12.sp),
// //               //   ),
// //               // ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
