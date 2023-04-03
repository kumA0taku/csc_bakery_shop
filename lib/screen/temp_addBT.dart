
//   // // get started button
//   // GestureDetector(
//   //   onTap: () => Navigator.pushReplacement(
//   //     context,
//   //     MaterialPageRoute(
//   //       builder: (context) {
//   //         return HomePage();
//   //       },
//   //     ),
//   //   ),

//   //   child: Container(
//   //     padding: const EdgeInsets.all(24),
//   //     decoration: BoxDecoration(
//   //       borderRadius: BorderRadius.circular(16),
//   //       color: const Color.fromARGB(255, 112, 91, 222),
//   //     ),
//   //     child: const Text(
//   //       "Get Started",
//   //       style: TextStyle(
//   //         color: Colors.white,
//   //         // fontWeight: FontWeight.bold,
//   //         fontSize: 16,
//   //       ),
//   //     ),
//   //   ),

//   // ),

// //temp add BT 
// Center(
//   child: Container(
//     width: MediaQuery.of(context).size.width - 220.0.w,
//     height: 52.0.h,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(24.0.sp),
//       color: const Color(0xFFF17532),
//     ),
//     child: Center(
//       child: InkWell(
//         onTap: () async {
//           await FlutterLaunch.launchWhatsapp(
//             phone: '6285640899224',
//             message:
//                 'Hi Bahri Cakery,Saya mau order $cookiename untuk hari ini, apa bisa diantar kerumah?',
//           );
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Icon(
//             //   FontAwesomeIcons.whatsapp,
//             //   size: 32.sp,
//             //   color: Colors.white,
//             // ),
//             SizedBox(
//               width: 8.w,
//             ),
//             Text(
//               'Add sweet',
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 16.0.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
// ),
  