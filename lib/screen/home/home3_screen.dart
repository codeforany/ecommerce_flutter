import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home3Screen extends StatefulWidget {
  const Home3Screen({super.key});

  @override
  State<Home3Screen> createState() => _Home3ScreenState();
}

class _Home3ScreenState extends State<Home3Screen> {
  List listArr = [
    {
      'name': "New collection",
      'image': 'assets/img/temp/g1.png',
      'is_color': false,
      'is_image': true,
    },
    {
      'name': "Summer sale",
      'image': 'assets/img/temp/g2.png',
      'is_color': true,
      'is_image': true,
    },
    {
      'name': "Men's hoodies",
      'image': 'assets/img/temp/g3.png',
      'is_color': false,
      'is_image': true,
    },
    {
      'name': "Black",
      'image': 'assets/img/temp/g4.png',
      'is_color': false,
      'is_image': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          repeatPattern: QuiltedGridRepeatPattern.same,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(2, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: listArr.length,
          (context, index) {
            var obj = listArr[index];

            return Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                alignment: index % 4 == 0
                    ? Alignment.bottomRight
                    : index % 4 == 2
                    ? Alignment.center
                    : Alignment.centerLeft,
                children: [
                  Image.asset(obj["image"].toString(), fit: BoxFit.cover),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      obj["name"].toString(),
                      style: TextStyle(
                        color: (obj["is_color"] as bool? ?? false)
                            ? TColor.primary
                            : TColor.whiteText,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
