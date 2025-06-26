import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';

class MultipleSelectScreen extends StatefulWidget {
  const MultipleSelectScreen({super.key});

  @override
  State<MultipleSelectScreen> createState() => _MultipleSelectScreenState();
}

class _MultipleSelectScreenState extends State<MultipleSelectScreen> {
  List valueArr = [
    "adids",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver",
  ];
  List selectArr = [];

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
          "Brand",
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

              SizedBox(width: 20),

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
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),

              itemBuilder: (context, index) {
                var obj = valueArr[index];
                var isSelect = selectArr.contains(index);
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (isSelect) {
                        selectArr.remove(index);
                      } else {
                        selectArr.add(index);
                      }
                    });
                  },
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            obj.toString(),
                            style: TextStyle(
                              color: isSelect
                                  ? TColor.primary
                                  : TColor.primaryText,
                              fontSize: 16,
                              fontWeight: isSelect
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                    
                        Icon(
                          isSelect
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: isSelect ? TColor.primary : TColor.primaryText,
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 15),
              itemCount: valueArr.length,
            ),
          ],
        ),
      ),
    );
  }
}
