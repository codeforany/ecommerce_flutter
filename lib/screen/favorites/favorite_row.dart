import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoriteRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const FavoriteRow({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
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
                Stack(
                  alignment: Alignment.topLeft,
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
                      height: 20,
                      margin: const EdgeInsets.only(top: 8, left: 8),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: TColor.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "30%",
                        style: TextStyle(color: TColor.whiteText, fontSize: 11),
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      obj["detail"].toString(),
                                      style: TextStyle(
                                        color: TColor.placeholder,
                                        fontSize: 11,
                                      ),
                                    ),

                                    SizedBox(height: 4),

                                    Text(
                                      obj["name"].toString(),
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: 40,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: TColor.placeholder,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          children: [
                            Text(
                              "Color: ",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "Black",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            SizedBox(width: 15),
                            Text(
                              "Size: ",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "L",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 8),

                        Row(
                          children: [
                            Text(
                              "${obj["price"].toString()}\$",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            Spacer(),

                            IgnorePointer(
                              ignoring: true,
                              child: RatingBar.builder(
                                initialRating:
                                    double.tryParse(obj["rate"].toString()) ??
                                    0.0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 17,
                                itemPadding: EdgeInsets.zero,
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.amber),
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

                            SizedBox(width: 50),
                          ],
                        ),

                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          InkWell(
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Image.asset(
                "assets/img/fav.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
