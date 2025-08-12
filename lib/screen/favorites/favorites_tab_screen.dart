import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/item_cell.dart';
import 'package:ecommerce/screen/favorites/favorite_cell.dart';
import 'package:ecommerce/screen/favorites/favorite_row.dart';
import 'package:ecommerce/screen/shop/filter_screen.dart';
import 'package:ecommerce/screen/shop/product_detail_screen.dart';
import 'package:ecommerce/screen/shop/select_size_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoritesTabScreen extends StatefulWidget {
  const FavoritesTabScreen({super.key});

  @override
  State<FavoritesTabScreen> createState() => _FavoritesTabScreenState();
}

class _FavoritesTabScreenState extends State<FavoritesTabScreen> {
  bool isGrid = false;

  List tagListArr = [
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
    {"name": "T-shirts"},
    {"name": "Crop tops"},
    {"name": "Sleeveless"},
    {"name": "Shirts"},
  ];

  List listArr = [
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Pullover',
      'detail': 'Mango',
      'image': 'assets/img/temp/sc1.png',
      'price': 15.0,
      'final_price': 12.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Blouse',
      'detail': 'Dorothy Perkins',
      'image': 'assets/img/temp/sc2.png',
      'price': 22.0,
      'final_price': 19.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'T-shirt',
      'detail': 'LOST Ink',
      'image': 'assets/img/temp/sc3.png',
      'price': 14.0,
      'final_price': 11.0,
    },
    {
      'rate': 5.0,
      'review': 10,
      'name': 'Shirt',
      'detail': 'Topshop',
      'image': 'assets/img/temp/sc4.png',
      'price': 14.0,
      'final_price': 11.0,
    },
  ];

  List sortArr = [
    {"name": "Popular"},
    {"name": "Newest"},
    {"name": "Customer review"},
    {"name": "Price: lowest to highest"},
    {"name": "Price: highest to lowest"},
  ];

  int selectSort = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Favorites",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(
                  height: 35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemBuilder: (context, index) {
                      var obj = tagListArr[index];

                      return Container(
                        width: 120,
                        height: 35,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          obj["name"].toString(),
                          style: TextStyle(
                            color: TColor.whiteText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 8),
                    itemCount: tagListArr.length,
                  ),
                ),

                Container(
                  decoration: BoxDecoration(color: TColor.bg),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.push(FilterScreen());
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.filter_list, color: TColor.primaryText),

                            SizedBox(width: 8),
                            Text(
                              "Filter",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sort By",
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        var obj = sortArr[index];
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectSort = index;
                                            });
                                            context.pop();
                                          },
                                          child: Container(
                                            height: 50,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            decoration: BoxDecoration(
                                              color: selectSort == index
                                                  ? TColor.primary
                                                  : Colors.transparent,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  obj["name"].toString(),
                                                  style: TextStyle(
                                                    color: selectSort == index
                                                        ? TColor.whiteText
                                                        : TColor.primaryText,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        selectSort == index
                                                        ? FontWeight.w600
                                                        : FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: sortArr.length,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.unfold_more_sharp,
                              color: TColor.primaryText,
                            ),

                            SizedBox(width: 8),
                            Text(
                              "Price: lowest to high",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            isGrid = !isGrid;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              isGrid ? Icons.list : Icons.grid_on,
                              color: TColor.primaryText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: isGrid
                ? GridView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.68,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      var obj = listArr[index];

                      return FavoriteCell(
                        obj: obj,
                        onPressed: () {
                          openProductDetail();
                        },
                      );
                    },
                    itemCount: listArr.length,
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    itemBuilder: (context, index) {
                      var obj = listArr[index];

                      return FavoriteRow(obj: obj, onPressed: (){
                        context.push(ProductDetailScreen());
                      });
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 8),
                    itemCount: listArr.length,
                  ),
          ),
        ],
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

  void openProductDetail() {
    context.push(ProductDetailScreen());
  }
}
