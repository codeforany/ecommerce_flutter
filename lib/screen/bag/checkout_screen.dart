import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/bag/shipping_address_screen.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List deliveryMethodArr = [
    {'image': "assets/img/fedex.png", 'day': "2-3 days"},
    {'image': "assets/img/usps.png", 'day': "2-3 days"},
    {'image': "assets/img/dhl.png", 'day': "2-3 days"},
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
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: TColor.primaryText,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping address",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Jane Doe",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(width: 8),

                        TextButton(
                          onPressed: () {
                            context.push( ShippingAddressScreen() );
                          },
                          child: Text(
                            "Change",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "3 Newbridge Court\nChino Hills, CA 91709, United States",
                      style: TextStyle(color: TColor.primaryText, fontSize: 14),
                    ),

                    SizedBox(height: 15),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  SizedBox(width: 8),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
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

              SizedBox(height: 35),

              Text(
                "Delivery method",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 100,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var obj = deliveryMethodArr[index];
                    return Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 2),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            obj["image"].toString(),
                            width: 80,
                            height: 40,
                            fit: BoxFit.contain,
                          ),


                          Text(
                           obj["day"].toString(),
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                  itemCount: deliveryMethodArr.length,
                ),
              ),

              SizedBox(height: 35),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order:",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "112\$",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery:",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "15\$",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Summary:",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    "127\$",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 35),

              RoundButton(title: "SUBMIT ORDER", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
