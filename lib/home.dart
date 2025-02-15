import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/screen/cakery_page.dart';
import 'package:flutter_cakery_shop_ui/screen/cakery_page_2.dart';
import 'package:flutter_cakery_shop_ui/widget/navbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

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
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {},
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        children: [
          SizedBox(height: 8.0.h),
          Text('Menu',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 40.0.sp,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0.h),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 24),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('All',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
                Tab(
                  child: Text('Shop',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0.sp,
                      )),
                ),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 160.0.h,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CakeryPage(),
                MyShop(assetPath: '', cookiename: '', cookieprice: '',),
                // CakeryPage(),
                // CakeryPage(),
                // CakeryPage(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
