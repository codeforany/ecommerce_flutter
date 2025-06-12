import 'package:ecommerce/screen/shop/cat_center_text_row.dart';
import 'package:ecommerce/screen/shop/cat_image_text_row.dart';
import 'package:flutter/material.dart';

class ShopWomenTabView extends StatefulWidget {
  const ShopWomenTabView({super.key});

  @override
  State<ShopWomenTabView> createState() => _ShopWomenTabViewState();
}

class _ShopWomenTabViewState extends State<ShopWomenTabView> {
  List listArr = [
    {
      "name": "SUMMER SALES",
      "subname": "Up to 50% off",
      "image": "",
      "is_offer": true,
    },
    {
      "name": "New",
      "subname": "",
      "image": "assets/img/temp/c1.png",
      "is_offer": false,
    },
    {
      "name": "Clothes",
      "subname": "",
      "image": "assets/img/temp/c2.png",
      "is_offer": false,
    },
    {
      "name": "Shoes",
      "subname": "",
      "image": "assets/img/temp/c3.png",
      "is_offer": false,
    },
    {
      "name": "Accessories",
      "subname": "",
      "image": "assets/img/temp/c4.png",
      "is_offer": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemBuilder: (context, index) {
        var obj = listArr[index];
        var isOffer = (obj["is_offer"] as bool? ?? false);
        return isOffer
            ? CatCenterTextRow(obj: obj, onPressed: () {})
            : CatImageTextRow(obj: obj, onPressed: () {});
      },
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: listArr.length,
    );
  }
}
