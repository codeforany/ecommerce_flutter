import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/Profile/order_item_row.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        title: Text(
          "Order Details",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Order No: 1947852",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

                  Text(
                    "05-08-2025",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),

              Row(
                children: [
                  Text(
                    "Tracking Number:",
                    style: TextStyle(color: TColor.placeholder, fontSize: 14),
                  ),

                  SizedBox(width: 8),

                  Expanded(
                    child: Text(
                      "IWAD1947852",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Text(
                    "Delivered",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "3 items",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 8),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var obj = listArr[index];

                  return OrderItemRow(obj: obj, onPressed: () {});
                },
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemCount: listArr.length,
              ),

              Text(
                "Order Information",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Shipping Address:",
                      style: TextStyle(color: TColor.placeholder, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "3 Newbridge Court ,Chino Hills,CA 91709, United States",
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Payment method:",
                      style: TextStyle(color: TColor.placeholder, fontSize: 14),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 2),
                      ],
                    ),

                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Image.asset(
                      "assets/img/mastercard.png",
                      width: 40,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),

                  SizedBox(width: 15),

                  Expanded(
                    child: Text(
                      "**** **** **** 3947",
                      style: TextStyle(color: TColor.primaryText, fontSize: 14),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Delivery method:",
                      style: TextStyle(color: TColor.placeholder, fontSize: 14),
                    ),
                  ),
                  Expanded(child: Text("FedEX, 3 days, 15\$")),
                ],
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Discount:",
                      style: TextStyle(color: TColor.placeholder, fontSize: 14),
                    ),
                  ),
                  Expanded(child: Text("10%, Personal promo code")),
                ],
              ),

              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Total Amount:",
                      style: TextStyle(color: TColor.placeholder, fontSize: 14),
                    ),
                  ),
                  Expanded(child: Text("133\$")),
                ],
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: RoundButton(
                      title: "Reorder",
                      type: RoundButtonType.line,
                      height: 35,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    child: RoundButton(
                      title: "Leave feedback",
                      height: 35,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
