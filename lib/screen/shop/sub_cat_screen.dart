import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/shop/cat_item_list_screen.dart';
import 'package:flutter/material.dart';

class SubCatScreen extends StatefulWidget {
  const SubCatScreen({super.key});

  @override
  State<SubCatScreen> createState() => _SubCatScreenState();
}

class _SubCatScreenState extends State<SubCatScreen> {
  List listArr = [
    {"name": "Tops"},
    {"name": "Shirts & Blouses"},
    {"name": "Cardigans & Sweaters"},
    {"name": "Knitwear"},
    {"name": "Blazers"},
    {"name": "Outerwear"},
    {"name": "Pants"},
    {"name": "Jeans"},
    {"name": "Shorts"},
    {"name": "Skirts"},
    {"name": "Dresses"},
  ];

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

        title: Text(
          "Categories",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RoundButton(title: "VIEW ALL ITEMS", onPressed: () {}),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Choose category",
              style: TextStyle(
                color: TColor.placeholder,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var obj = listArr[index];

                return InkWell(
                  onTap: () {
                    context.push(CatItemListScreen());
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      obj["name"].toString(),
                      style: TextStyle(color: TColor.primaryText, fontSize: 16),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(height: 1, color: Colors.black12),
              itemCount: listArr.length,
            ),
          ),
        ],
      ),
    );
  }
}
