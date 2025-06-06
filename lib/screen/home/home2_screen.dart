import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/section_view.dart';
import 'package:ecommerce/screen/home/item_row.dart';
import 'package:flutter/material.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});

  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {

  List listArr = [
    {
      'rate': 5.0,
      'review': 10,
      'offer':'-15%',
      'is_offer':true,
      'name':'Evening Dress',
      'detail':'Dorothy Perkins',
      'image':'assets/img/temp/1.png',
      'price':15.0,
      'final_price':12.0

    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '-20%',
      'is_offer': true,
      'name': 'Sport Dress',
      'detail': 'Sitlly',
      'image': 'assets/img/temp/2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '-10%',
      'is_offer': true,
      'name': 'Sport Dress',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/3.png',
      'price': 14.0,
      'final_price': 11.0,
    }

  ];

  List newArr = [
    {
      'rate': 5.0,
      'review': 10,
      'offer': '',
      'is_offer': false,
      'name': 'Evening Dress',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/1.png',
      'price': 15.0,
      'final_price': 12.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '',
      'is_offer': false,
      'name': 'Sport Dress',
      'detail': 'Sitlly',
      'image': 'assets/img/temp/2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '',
      'is_offer': false,
      'name': 'Sport Dress',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/3.png',
      'price': 14.0,
      'final_price': 11.0,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/img/temp/b1.png", width: context.width),

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
                        "Street clothes",
                        style: TextStyle(
                          color: TColor.whiteText,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ],
            ),

             SizedBox(height: 30),
            SectionView(
              title: "Sale",
              subtitle: "Super summer sale",
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
                  var obj = listArr[index];
                  return ItemRow(obj: obj);
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: listArr.length,
              ),
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
                  var obj = newArr[index];
                  return ItemRow(obj: obj);
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: newArr.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
