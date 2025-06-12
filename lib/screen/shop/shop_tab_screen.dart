import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/screen/shop/shop_women_tab_view.dart';
import 'package:flutter/material.dart';

class ShopTabScreen extends StatefulWidget {
  const ShopTabScreen({super.key});

  @override
  State<ShopTabScreen> createState() => _ShopTabScreenState();
}

class _ShopTabScreenState extends State<ShopTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {
        selectTab = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          "Categories",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: TColor.bg,
            child: TabBar(
              controller: controller,
              indicatorColor: TColor.primary,
              indicatorWeight: 3,
              labelColor: TColor.primaryText,
              labelStyle: TextStyle(
                color: TColor.placeholder,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(text: "Women"),
                Tab(text: "Men"),
                Tab(text: "Kids"),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: controller,
              children: [ShopWomenTabView(), ShopWomenTabView(), ShopWomenTabView()],
            ),
          ),
        ],
      ),
    );
  }
}
