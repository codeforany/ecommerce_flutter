import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/rating_bar_row.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/shop/user_review_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingReviewsScreen extends StatefulWidget {
  const RatingReviewsScreen({super.key});

  @override
  State<RatingReviewsScreen> createState() => _RatingReviewsScreenState();
}

class _RatingReviewsScreenState extends State<RatingReviewsScreen> {
  var isShowPhoto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        centerTitle: true,
        // title: Text(
        //   "Filters",
        //   style: TextStyle(
        //     color: TColor.primaryText,
        //     fontSize: 18,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        color: Colors.transparent,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 150,
                child: RoundButton(
                  title: "Write a review",
                  height: 36,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rating&Reviews",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        Text(
                          "23 ratings",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBarRow(
                            rate: 5,
                            ratingProgress: 0.7,
                            reviewCount: 12,
                          ),
                          RatingBarRow(
                            rate: 4,
                            ratingProgress: 0.12,
                            reviewCount: 4,
                          ),
                          RatingBarRow(
                            rate: 3,
                            ratingProgress: 0.1,
                            reviewCount: 3,
                          ),
                          RatingBarRow(
                            rate: 2,
                            ratingProgress: 0.07,
                            reviewCount: 2,
                          ),
                          RatingBarRow(
                            rate: 1,
                            ratingProgress: 0.04,
                            reviewCount: 0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "8 reviews",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        isShowPhoto = !isShowPhoto;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isShowPhoto
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: TColor.placeholder,
                        ),

                        SizedBox(width: 8),

                        Text(
                          "With photo",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 20),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return UserReviewRow(obj: {}, onPressed: (){

                  });
                },
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
