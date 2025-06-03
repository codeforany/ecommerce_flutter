import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/common_widgets/section_view.dart';
import 'package:ecommerce/screen/home/item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({super.key});

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/img/temp/big1.png", width: context.width),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 35,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Fashion\nsale",
                        style: TextStyle(
                          color: TColor.whiteText,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(height: 15),

                      RoundButton(title: "Check", width: 150, onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            SectionView(
              title: "New",
              subtitle: "You're never seen it before!",
              onPressed: () {},
            ),

            SizedBox(
              height: 300,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                  return ItemRow();
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
