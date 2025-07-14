import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserReviewRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const UserReviewRow({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(color: Colors.black12.withValues(alpha: 0.05), blurRadius: 2)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Helene Moore",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 4),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 5.0,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.zero,
                    unratedColor: TColor.bg,
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: Colors.amber),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),

                  Text(
                    "June 10, 2025",
                    style: TextStyle(color: TColor.placeholder, fontSize: 11),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.8),
                  fontSize: 14,
                ),
              ),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Helpful",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(width: 8),

                        Icon(
                          Icons.thumb_up,
                          color: TColor.placeholder,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(0, 1))],
          ),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: Image.asset(
              "assets/img/temp/1.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
