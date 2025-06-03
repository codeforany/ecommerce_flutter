import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 150,
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
                  "assets/img/temp/1.png",
                  width: 150,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "NEW",
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
                initialRating: 5,
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
              "(100)",
              style: TextStyle(color: TColor.placeholder, fontSize: 11),
            ),
          ],
        ),

        SizedBox(height: 4),

        Text(
          "Dorothy Perkins",
          style: TextStyle(color: TColor.placeholder, fontSize: 11),
        ),

        SizedBox(height: 4),

        Text(
          "Evening Dress",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 4),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "\$15",
              style: TextStyle(
                color: TColor.placeholder,
                fontSize: 14,
                decoration: TextDecoration.lineThrough,
              ),
            ),

            SizedBox(width: 4),

            Text(
              "\$12",
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
    );
  }
}
