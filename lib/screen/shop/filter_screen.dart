import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:ecommerce/screen/shop/multiple_select_screen.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var priceVal = const RangeValues(40, 140);
  List colors = [
    Colors.red,
    Color(0xffdfdfdf),
    Colors.green,
    Colors.orange,
    Colors.yellow,
  ];
  List selectColor = [];

  List sizeArr = ["XS", "S", "M", "L", "XL"];
  List selectSize = [];

  List categoryArr = ["All", "Women", "Men", "Boys", "Girls"];
  List selectCategory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: RoundButton(
                  title: "Discard",
                  height: 36,
                  type: RoundButtonType.line,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),

              SizedBox(width: 20,),

              Expanded(
                child: RoundButton(
                  title: "Apply",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Price range",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${priceVal.start.round().toString()}",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        "\$${priceVal.end.round().toString()}",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  RangeSlider(
                    values: priceVal,
                    max: 500,
                    activeColor: TColor.primary,
                    inactiveColor: TColor.primary.withValues(alpha: 0.2),
                    labels: RangeLabels(
                      priceVal.start.round().toString(),
                      priceVal.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        priceVal = values;
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Colors",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 4),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (selectColor.contains(index)) {
                          selectColor.remove(index);
                        } else {
                          selectColor.add(index);
                        }
                      });
                    },
                    child: Container(
                      width: 54,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: selectColor.contains(index)
                              ? TColor.primary
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 15),
                itemCount: colors.length,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Sizes",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 74,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 4),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var obj = sizeArr[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (selectSize.contains(index)) {
                          selectSize.remove(index);
                        } else {
                          selectSize.add(index);
                        }
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectSize.contains(index)
                            ? TColor.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectSize.contains(index)
                              ? TColor.primary
                              : TColor.primaryText,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        obj.toString(),
                        style: TextStyle(
                          color: selectSize.contains(index)
                              ? TColor.whiteText
                              : TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 15),
                itemCount: sizeArr.length,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Category",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: (context.width / 3) / 50,
                ),
                padding: const EdgeInsets.symmetric(vertical: 4),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var obj = categoryArr[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (selectCategory.contains(index)) {
                          selectCategory.remove(index);
                        } else {
                          selectCategory.add(index);
                        }
                      });
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectCategory.contains(index)
                            ? TColor.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectCategory.contains(index)
                              ? TColor.primary
                              : TColor.primaryText,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        obj.toString(),
                        style: TextStyle(
                          color: selectCategory.contains(index)
                              ? TColor.whiteText
                              : TColor.primaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },

                itemCount: categoryArr.length,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: InkWell(
                onTap: (){
                  context.push(MultipleSelectScreen());
                },
                child: Row(
                  // mainAxisAlignment: ,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brand",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                
                          Text(
                            "adidas original, jack & jones",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    Icon(Icons.navigate_next, color: TColor.primaryText),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
