import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  TextEditingController txtMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 160),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      constraints: BoxConstraints(maxHeight: context.heigth * 0.8),
      decoration: BoxDecoration(
        color: TColor.bg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),

            Text(
              "What is you rate?",
              style: TextStyle(
                color: TColor.primaryText,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 25),

            RatingBar.builder(
              initialRating: 5.0,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 60,
              itemPadding: EdgeInsets.zero,
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),

            SizedBox(height: 25),

            Text(
              "Please share your opinion\nabout the product",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 25),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: txtMessage,
                minLines: 10,
                maxLines: 15,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Your review",
                ),
              ),
            ),

            SizedBox(height: 25),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: TColor.bg,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 2),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: TColor.primary,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 2),
                          ],
                        ),
                        child: Icon(Icons.camera_alt, color: Colors.white),
                      ),

                      Text(
                        "Add your photos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            SizedBox(height: 8),

            RoundButton(
              title: "SEND REVIEW",
              onPressed: () {
                context.pop();
              },
            ),

            SizedBox(height: 25),
          ],
        ),
      ),
      // ),
    );
  }
}
