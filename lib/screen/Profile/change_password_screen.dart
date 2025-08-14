import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:ecommerce/screen/login/forgot_password_screen.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password Change",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: context.width * 0.16),

                RoundTextfield(hitText: "Current Password", obscureText: true),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.push(ForgotPasswordScreen());
                      },
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

               

                RoundTextfield(hitText: "New Password", obscureText: true),

                RoundTextfield(hitText: "Repeat New Password", obscureText: true),
                SizedBox(height: 30),

                RoundButton(title: "SAVE PASSWORD", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
