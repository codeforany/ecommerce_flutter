import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/screen/bag/promo_code_row.dart';
import 'package:flutter/material.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: context.height * 0.6 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                      color: TColor.primaryText.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.only(right: 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withValues(alpha: 0.05),
                            blurRadius: 1,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                
                          hintText: "Enter you promo code",
                
                          hintStyle: TextStyle(color: TColor.placeholder),
                          labelStyle: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withValues(alpha: 0.05),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(Icons.arrow_right_alt, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Your Promo Codes",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 25),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return PromoCodeRow();
                },
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
