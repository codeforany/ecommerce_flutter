import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/bag/bag_row.dart';
import 'package:ecommerce/screen/bag/checkout_screen.dart';
import 'package:ecommerce/screen/bag/promo_code_screen.dart';
import 'package:flutter/material.dart';

class BagTabScreen extends StatefulWidget {
  const BagTabScreen({super.key});

  @override
  State<BagTabScreen> createState() => _BagTabScreenState();
}

class _BagTabScreenState extends State<BagTabScreen> {
  List listArr = [
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Pullover',
      'detail': 'Mango',
      'image': 'assets/img/temp/sc1.png',
      'price': 15.0,
      'final_price': 12.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Blouse',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/sc2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'T-shirt',
      'detail': 'LOST Ink',
      'image': 'assets/img/temp/sc3.png',
      'price': 14.0,
      'final_price': 11.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Shirt',
      'detail': 'Topshop',
      'image': 'assets/img/temp/sc4.png',
      'price': 14.0,
      'final_price': 11.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "My Bag",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemBuilder: (context, index) {
                return BagRow(obj: listArr[index], onPressed: () {});
              },
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemCount: listArr.length,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                     Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.only(right: 22),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withValues(alpha: 0.05),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                          
                            hintText: "Enter you promo code",

                            hintStyle: TextStyle(color: TColor.placeholder),
                            labelStyle: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 11,
                            ),
                          ),
                          onTap: () {
                            openPromoSelect();
                          },
                        ),
                      ),
                 

                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withValues(alpha: 0.05),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(Icons.arrow_right_alt, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 44,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total amount:",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 14,
                        ),
                      ),

                      Text(
                        "\$124",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                RoundButton(title: "CHECK OUT", onPressed: () {
                  context.push(  CheckoutScreen() );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //TODO: Action
  void openPromoSelect() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return PromoCodeScreen();
      },
    );
  }
}
