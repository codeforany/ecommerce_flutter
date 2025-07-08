import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/home/item_row.dart';
import 'package:ecommerce/screen/shop/rating_reviews_screen.dart';
import 'package:ecommerce/screen/shop/select_size_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  List listArr = [
    {
      'rate': 5.0,
      'review': 10,
      'offer': '-15%',
      'is_offer': true,
      'name': 'Evening Dress',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/1.png',
      'price': 15.0,
      'final_price': 12.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '-20%',
      'is_offer': true,
      'name': 'Sport Dress',
      'detail': 'Sitlly',
      'image': 'assets/img/temp/2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'offer': '-10%',
      'is_offer': true,
      'name': 'Sport Dress',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/3.png',
      'price': 14.0,
      'final_price': 11.0,
    },
  ];

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
            SizedBox(
              height: 300,
              child: CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 9 / 16,
                  viewportFraction: 0.7,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  // autoPlayInterval: Duration(seconds: 3),
                  // autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.07,
                  onPageChanged: (index, option) {},
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Image.asset(
                            "assets/img/temp/1.png",
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        openSizeSelect();
                      },
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                            InkWell(
                              onTap: () {
                                context.push(RatingReviewsScreen());
                              },
                              child: IgnorePointer(
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

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "You can also like this",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "12 items",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 300,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                  var obj = listArr[index];
                  return ItemRow(obj: obj);
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: listArr.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

    //TODO: Action
  void openSizeSelect() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return SelectSizeScreen();
      },
    );
  }
}
