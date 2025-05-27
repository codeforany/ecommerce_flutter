import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundTextfield(
                hitText: "Email",
                keyboardType: TextInputType.emailAddress,
                isError: false,
                errorMessage:  "Please enter valid email address",
              ),
              RoundTextfield(
                hitText: "Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
