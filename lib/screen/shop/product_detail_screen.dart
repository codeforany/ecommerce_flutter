import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        centerTitle: true,
        title: Text(
          "Short Dress",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share, color: TColor.primaryText),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 1,
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: RoundButton(title: "ADD TO CART", onPressed: () {}),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: TColor.primaryText,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Size",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Icon(
                              Icons.arrow_drop_down,
                              color: TColor.primaryText,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: TColor.primaryText,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Black",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Icon(
                              Icons.arrow_drop_down,
                              color: TColor.primaryText,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15),

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
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "H&M",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Short black dress",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 11,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IgnorePointer(
                              ignoring: true,
                              child: RatingBar.builder(
                                initialRating: double.tryParse("5.0") ?? 0.0,
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
                              "(${"10"})",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Text(
                    "\$19.99",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                style: TextStyle(color: TColor.primaryText, fontSize: 14),
              ),
            ),

            SizedBox(height: 15),

            Divider(color: Colors.black12, height: 0.5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                // mainAxisAlignment: ,
                children: [
                  Expanded(
                    child: Text(
                      "Item details",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Icon(Icons.navigate_next, color: TColor.primaryText),
                ],
              ),
            ),

            Divider(color: Colors.black12, height: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                // mainAxisAlignment: ,
                children: [
                  Expanded(
                    child: Text(
                      "Shipping Info",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Icon(Icons.navigate_next, color: TColor.primaryText),
                ],
              ),
            ),

            Divider(color: Colors.black12, height: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                // mainAxisAlignment: ,
                children: [
                  Expanded(
                    child: Text(
                      "Support",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Icon(Icons.navigate_next, color: TColor.primaryText),
                ],
              ),
            ),

            Divider(color: Colors.black12, height: 0.5),
          ],
        ),
      ),
    );
  }
}
