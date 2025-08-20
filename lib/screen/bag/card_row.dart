import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  final bool isSelect;
  final VoidCallback onPressed;
  final VoidCallback onCheckChange;

  const CardRow({
    super.key,
    this.isSelect = false,
    required this.onCheckChange,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/img/card.png",
              width: double.maxFinite,
              fit: BoxFit.fitWidth,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "* * * *  * * * *  * * * *  3947 ",
                    style: TextStyle(color: TColor.whiteText, fontSize: 24),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card Holder Name ",
                            style: TextStyle(
                              color: TColor.whiteText,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            "Code For Any",
                            style: TextStyle(
                              color: TColor.whiteText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry Date ",
                            style: TextStyle(
                              color: TColor.whiteText,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            "05/28",
                            style: TextStyle(
                              color: TColor.whiteText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      Image.asset(
                        "assets/img/mastercard.png",
                        width: 40,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

        InkWell(
          onTap: onCheckChange,
          child: Row(
            children: [
              Icon(
                isSelect ? Icons.check_box : Icons.check_box_outline_blank,
                color: TColor.primaryText,
              ),

              SizedBox(width: 15),

              Text(
                "Use as default payment method",
                style: TextStyle(color: TColor.primaryText, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
