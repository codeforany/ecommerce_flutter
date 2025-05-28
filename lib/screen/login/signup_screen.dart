import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:ecommerce/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: context.width * 0.16),

                RoundTextfield(
                  hitText: "Name",
                  isError: false,
                  errorMessage: "Please enter name",
                ),

                RoundTextfield(
                  hitText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  isError: false,
                  errorMessage: "Please enter valid email address",
                ),
                RoundTextfield(hitText: "Password", obscureText: true),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.push(LoginScreen());
                      },
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    Icon(Icons.arrow_right_alt, color: TColor.primary),
                  ],
                ),

                SizedBox(height: 30),

                RoundButton(title: "SIGN UP", onPressed: () {}),

                

                SizedBox(height: context.width * 0.5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or login with social account",
                      style: TextStyle(color: TColor.primaryText, fontSize: 14),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIconButton(
                      image: "assets/img/google.png",
                      onPressed: () {},
                    ),
                    SizedBox(width: 15),

                    RoundIconButton(
                      image: "assets/img/fb.png",
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
