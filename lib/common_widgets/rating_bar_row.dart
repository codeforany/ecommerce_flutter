import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarRow extends StatelessWidget {
  final double rate;
  final double ratingProgress;
  final int reviewCount;
  const RatingBarRow({super.key, required this.rate, required this.ratingProgress, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          RatingBar.builder(
            initialRating: 5.0 - rate,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 15,
            ignoreGestures: true,
            itemPadding: EdgeInsets.zero,
            unratedColor: Colors.amber,
            itemBuilder: (context, _) => Icon(Icons.star, color: TColor.bg),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
      
          SizedBox(width: 8),
      
          Expanded(
            child: LinearProgressIndicator(
              value: ratingProgress,
              minHeight: 8,
              color: TColor.primary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
      
          SizedBox(width: 8),
      
          Text("($reviewCount)", style: TextStyle(color: TColor.placeholder, fontSize: 14)),
        ],
      ),
    );
  }
}
