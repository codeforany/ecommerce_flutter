import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/main_tab/main_tab_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreen2 extends StatefulWidget {
  const SuccessScreen2({super.key});

  @override
  State<SuccessScreen2> createState() => _SuccessScreen2State();
}

class _SuccessScreen2State extends State<SuccessScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              "assets/img/bags.png",
              width: context.width * 0.5,
              fit: BoxFit.fitWidth,
            ),

            SizedBox(height: 20),
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

            Spacer(),

            RoundButton(
              title: "CONTINUE SHOPPING",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainTabScreen()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
