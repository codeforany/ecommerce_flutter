import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/screen/bag/add_shipping_address_screen.dart';
import 'package:ecommerce/screen/bag/shipping_row.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
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
          "Shipping Addresses",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: TColor.primaryText,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColor.primaryText,
        onPressed: (){
          context.push( AddShippingAddressScreen() );
      }, child: Icon(Icons.add),),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemBuilder: (context, index) {
          return ShippingRow(
            onPressed: () {},
            isSelect: index == 0,
            onCheckPress: () {},
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemCount: 3,
      ),
    );
  }
}
