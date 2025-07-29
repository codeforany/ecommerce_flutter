import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:flutter/material.dart';

class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({super.key});

  @override
  State<AddShippingAddressScreen> createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
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
          "Adding Shipping Addresses",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: TColor.primaryText,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              RoundTextfield(
                hitText: "Full Name",
                isError: false,
                errorMessage: "Please enter full name",
              ),

              RoundTextfield(
                hitText: "Address",
                isError: false,
                errorMessage: "Please enter address",
              ),

               RoundTextfield(
                hitText: "City",
                isError: false,
                errorMessage: "Please enter city",
              ),

              RoundTextfield(
                hitText: "State/Province/Region",
                isError: false,
                errorMessage: "Please enter state/province/region",
              ),

              RoundTextfield(
                hitText: "Zip Code (Postal Code)",
                isError: false,
                errorMessage: "Please enter zip code",
              ),

               RoundTextfield(
                hitText: "Country",
                isError: false,
                errorMessage: "Please enter country",
              ),

              SizedBox(height: 30,),

              RoundButton(title: "SAVE ADDRESS", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
