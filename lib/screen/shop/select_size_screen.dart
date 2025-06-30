import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';

class SelectSizeScreen extends StatefulWidget {
  const SelectSizeScreen({super.key});

  @override
  State<SelectSizeScreen> createState() => _SelectSizeScreenState();
}

class _SelectSizeScreenState extends State<SelectSizeScreen> {
  List sizeArr = ["XS", "S", "M", "L", "XL"];
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 6,
              decoration: BoxDecoration(
                color: TColor.primaryText.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(3),
              ),
            ),

            SizedBox(height: 15),

            Text(
              "Select Size",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 25),

            

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: (context.width / 3) / 50,
              ),
              itemBuilder: (context, index) {
                var obj = sizeArr[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectIndex = index;
                    });
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectIndex == index
                          ? TColor.primary
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selectIndex == index
                            ? TColor.primary
                            : TColor.primaryText,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      obj.toString(),
                      style: TextStyle(
                        color: selectIndex == index
                            ? TColor.whiteText
                            : TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
              itemCount: sizeArr.length,
            ),

            SizedBox(height: 25),

            Divider(color: Colors.black12, height: 0.5),

            InkWell(
              onTap: () {},
              child: SizedBox(
                
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size Info",
                      style: TextStyle(color: TColor.primaryText, fontSize: 16),
                    ),

                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: TColor.primaryText,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),

            Divider(color: Colors.black12, height: 0.5),

            SizedBox(height: 25),

            RoundButton(
              title: "ADD TO CART",
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
