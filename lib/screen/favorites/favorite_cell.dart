import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoriteCell extends StatelessWidget {
  final Map obj;
  final bool isShowFav;
  final VoidCallback onPressed;

  const FavoriteCell({
    super.key,
    required this.obj,
    this.isShowFav = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: TColor.placeholder,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(10),
                        child: Image.asset(
                          obj["image"].toString(),
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.width * 0.46,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: (obj["is_offer"] as bool? ?? false)
                              ? TColor.primary
                              : Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          (obj["is_offer"] as bool? ?? false)
                              ? obj["offer"].toString()
                              : "NEW",
                          style: TextStyle(
                            color: TColor.whiteText,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
                            double.tryParse(obj["rate"].toString()) ?? 0.0,
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
                      style: TextStyle(color: TColor.placeholder, fontSize: 11),
                    ),
                  ],
                ),

                SizedBox(height: 4),

                Text(
                  obj["detail"].toString(),
                  style: TextStyle(color: TColor.placeholder, fontSize: 11),
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
                 Row(
                  children: [
                    Text(
                      "Color: ",
                      style: TextStyle(color: TColor.placeholder, fontSize: 11),
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
                      style: TextStyle(color: TColor.placeholder, fontSize: 11),
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

                SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${obj["price"].toString()}\$",
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),

                    SizedBox(width: 4),

                    Text(
                      "${obj["final_price"].toString()}\$",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 90),
            child: InkWell(
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
          ),
        ],
      ),
    );
  }
}
