import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/main_tab/main_tab_screen.dart';
import 'package:ecommerce/screen/shop/success_screen_2.dart';
import 'package:flutter/material.dart';

class SuccessScreen1 extends StatefulWidget {
  const SuccessScreen1({super.key});

  @override
  State<SuccessScreen1> createState() => _SuccessScreen1State();
}

class _SuccessScreen1State extends State<SuccessScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/success.png",
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Success!",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Your order will be delivered soon.\nThank you for choosing our app!",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              RoundButton(
                title: "Continue Shopping",
                width: 180,
                height: 35,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainTabScreen()),
                    (route) => false,
                  );
                  // context.push(SuccessScreen2());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
