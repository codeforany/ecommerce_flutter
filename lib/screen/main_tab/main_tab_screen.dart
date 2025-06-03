import 'package:ecommerce/common_widgets/tab_button.dart';
import 'package:ecommerce/screen/home/home1_screen.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller.addListener(() {
      setState(() {
        selectTab = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          Home1Screen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: TabBar(
            controller: controller,
             indicatorColor: Colors.transparent,
            tabs: [
              TabButton(
                title: "Home",
                selectIcon: "assets/img/home_tab.png",
                unSelectIcon: "assets/img/home_tab_u.png",
                isSelect: selectTab == 0,
              ),

              TabButton(
                title: "Shop",
                selectIcon: "assets/img/shop_tab.png",
                unSelectIcon: "assets/img/shop_tab_u.png",
                isSelect: selectTab == 1,
              ),

              TabButton(
                title: "Bag",
                selectIcon: "assets/img/bag_tab.png",
                unSelectIcon: "assets/img/bag_tab_u.png",
                isSelect: selectTab == 2,
              ),

              TabButton(
                title: "Fav",
                selectIcon: "assets/img/fav_tab.png",
                unSelectIcon: "assets/img/fav_tab_u.png",
                isSelect: selectTab == 3,
              ),

              TabButton(
                title: "Profile",
                selectIcon: "assets/img/profile_tab.png",
                unSelectIcon: "assets/img/profile_tab_u.png",
                isSelect: selectTab == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
