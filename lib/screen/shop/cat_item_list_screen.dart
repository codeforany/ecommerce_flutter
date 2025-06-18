import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CatItemListScreen extends StatefulWidget {
  const CatItemListScreen({super.key});

  @override
  State<CatItemListScreen> createState() => _CatItemListScreenState();
}

class _CatItemListScreenState extends State<CatItemListScreen> {
  List tagListArr = [
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
  ];

  List listArr = [
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Pullover',
      'detail': 'Mango',
      'image': 'assets/img/temp/sc1.png',
      'price': 15.0,
      'final_price': 12.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Blouse',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/sc2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'T-shirt',
      'detail': 'LOST Ink',
      'image': 'assets/img/temp/sc3.png',
      'price': 14.0,
      'final_price': 11.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Shirt',
      'detail': 'Topshop',
      'image': 'assets/img/temp/sc4.png',
      'price': 14.0,
      'final_price': 11.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Women's tops",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(
                  height: 35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemBuilder: (context, index) {
                      var obj = tagListArr[index];

                      return Container(
                        width: 120,
                        height: 35,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          obj["name"].toString(),
                          style: TextStyle(
                            color: TColor.whiteText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 8),
                    itemCount: tagListArr.length,
                  ),
                ),

                Container(
                  decoration: BoxDecoration(color: TColor.bg),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.filter_list, color: TColor.primaryText),

                            SizedBox(width: 8),
                            Text(
                              "Filter",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.unfold_more_sharp,
                              color: TColor.primaryText,
                            ),

                            SizedBox(width: 8),
                            Text(
                              "Price: lowest to high",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.grid_on, color: TColor.primaryText),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              itemBuilder: (context, index) {
                var obj = listArr[index];

                return InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 104,
                        margin: const EdgeInsets.only(bottom: 15),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              child: Image.asset(
                                obj["image"].toString(),
                                width: 104,
                                height: 104,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    obj["name"].toString(),
                                    style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  SizedBox(height: 8),

                                  Text(
                                    obj["detail"].toString(),
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontSize: 11,
                                    ),
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IgnorePointer(
                                        ignoring: true,
                                        child: RatingBar.builder(
                                          initialRating:
                                              double.tryParse(
                                                obj["rate"].toString(),
                                              ) ??
                                              0.0,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 17,
                                          itemPadding: EdgeInsets.zero,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),

                                      Text(
                                        "(${obj["review"].toString()})",
                                        style: TextStyle(
                                          color: TColor.placeholder,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${obj["price"].toString()}\$",
                                        style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      // SizedBox(width: 4),

                                      // Text(
                                      //   "${obj["final_price"].toString()}\$",
                                      //   style: TextStyle(
                                      //     color: TColor.primary,
                                      //     fontSize: 14,
                                      //     fontWeight: FontWeight.w500,
                                      //     decoration:
                                      //         TextDecoration.lineThrough,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        child: Container(
                          width: 40,
                          height: 40,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: TColor.placeholder,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 8),
              itemCount: listArr.length,
            ),
          ),
        ],
      ),
    );
  }
}
