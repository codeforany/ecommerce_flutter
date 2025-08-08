import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_select_button.dart';
import 'package:ecommerce/screen/Profile/my_order_row.dart';
import 'package:ecommerce/screen/Profile/order_details_screen.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  int selectTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TColor.bg,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText, size: 30),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "My Orders",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: RoundSelectButton(
                    title: "Delivered",
                    isSelect: selectTab == 0,
                    onPressed: () {
                      setState(() {
                        selectTab = 0;
                      });
                    },
                  ),
                ),

                Expanded(
                  child: RoundSelectButton(
                    title: "Processing",
                    isSelect: selectTab == 1,
                    onPressed: () {
                      setState(() {
                        selectTab = 1;
                      });
                    },
                  ),
                ),

                Expanded(
                  child: RoundSelectButton(
                    title: "Cancelled",
                    isSelect: selectTab == 2,
                    onPressed: () {
                      setState(() {
                        selectTab = 2;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              itemBuilder: (context, index) {
                return MyOrderRow(
                  obj: {},
                  onPressed: () {
                    context.push( OrderDetailsScreen()  );
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
