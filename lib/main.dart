import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/screen/login/login_screen.dart';
import 'package:ecommerce/screen/login/signup_screen.dart';
import 'package:flutter/material.dart';

//flutter create --org com.codeforany ecommerce

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        scaffoldBackgroundColor: TColor.bg,
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          color: TColor.whiteText,
          elevation: 1
        )
      ),
      home: SignupScreen(),
    );
  }
}


