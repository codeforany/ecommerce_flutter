import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  var isDefault = false;

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
          "Add New Card",
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
                hitText: "Name on card",
                isError: false,
                errorMessage: "Please enter name",
              ),

              RoundTextfield(
                hitText: "Card Number",
                keyboardType: TextInputType.number,
                isError: false,
                errorMessage: "Please enter card number",
              ),

              RoundTextfield(
                hitText: "Expire Date (MM/YY)",
                isError: false,
                errorMessage: "Please enter expire date",
              ),

              RoundTextfield(
                hitText: "CVV",
                isError: false,
                keyboardType: TextInputType.number,
                errorMessage: "Please enter cvv",
              ),

              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  setState(() {
                    isDefault = !isDefault;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      isDefault
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: TColor.primaryText,
                    ),

                    SizedBox(width: 15),

                    Text(
                      "Set as default payment method",
                      style: TextStyle(color: TColor.primaryText, fontSize: 14),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              RoundButton(title: "ADD CARD", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
