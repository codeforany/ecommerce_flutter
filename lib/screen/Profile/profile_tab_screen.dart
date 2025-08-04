import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/screen/Profile/my_orders_screen.dart';
import 'package:ecommerce/screen/Profile/profile_row.dart';
import 'package:ecommerce/screen/bag/shipping_address_screen.dart';
import 'package:flutter/material.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TColor.bg,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText, size: 30),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(35),
                      child: Image.asset(
                        "assets/img/temp/1.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Code ForAny",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Text(
                            "codeforany@gmail.com",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 40),

          ProfileRow(
            title: "My Order",
            subtitle: "Already have 12 orders",
            onPressed: () {

              context.push(MyOrdersScreen());

            },
          ),
          ProfileRow(
            title: "Shipping Addresses",
            subtitle: "Already have 12 orders",
            onPressed: () {
              context.push( ShippingAddressScreen() );
            },
          ),

          ProfileRow(
            title: "Payment Methods",
            subtitle: "Visa **34",
            onPressed: () {
              context.push(ShippingAddressScreen());
            },
          ),

          ProfileRow(
            title: "Promo codes",
            subtitle: "You have special promo codes",
            onPressed: () {
              context.push(ShippingAddressScreen());
            },
          ),

          ProfileRow(
            title: "My Reviews",
            subtitle: "Reviews for 4 items",
            onPressed: () {
              context.push(ShippingAddressScreen());
            },
          ),

          ProfileRow(
            title: "Settings",
            subtitle: "Notification, Password",
            onPressed: () {
              context.push(ShippingAddressScreen());
            },
          ),
        ],
      ),
    );
  }
}
