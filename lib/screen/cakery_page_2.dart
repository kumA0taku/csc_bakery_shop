import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/components/grocery_item_tile.dart';
import 'package:flutter_cakery_shop_ui/model/cart_model.dart';
import 'package:flutter_cakery_shop_ui/screen/cakery_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_cakery_shop_ui/screen/home_page.dart';
import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../data/cake.dart';

class MyShop extends StatefulWidget {
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  // const MyShop({
  //   Key? key,
  //   required this.assetPath,
  //   required this.cookieprice,
  //   required this.cookiename,
  // }) : super(key: key);

  const MyShop(
      {super.key,
      required this.assetPath,
      required this.cookieprice,
      required this.cookiename});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 16.0.h),
          Padding(
            padding: EdgeInsets.only(left: 16.0.sp),
            child: Text(
              'Please select your love♥',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          // get add to cart button
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
                );
              },
            ),
          ),

          SizedBox(height: 28.0.h),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}