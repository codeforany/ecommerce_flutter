import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class ShippingRow extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onCheckPress;
  final bool isSelect;

  const ShippingRow({super.key, required this.onPressed, required this.isSelect, required this.onCheckPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Jane Doe",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(width: 8),

              TextButton(
                onPressed: onPressed,
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          Text(
            "3 Newbridge Court\nChino Hills, CA 91709, United States",
            style: TextStyle(color: TColor.primaryText, fontSize: 14),
          ),

          SizedBox(height: 15),

          Row(
            children: [
              InkWell(
                onTap: onCheckPress,
                child: Icon(
                 isSelect ? Icons.check_box :  Icons.check_box_outline_blank,
                  color: TColor.primaryText,
                ),
              ),

              SizedBox(width: 4),

              Text(
                "Use as the shipping address",
                style: TextStyle(color: TColor.primaryText, fontSize: 14),
              ),
            ],
          ),

          SizedBox(height: 15),
        ],
      ),
    );
  }
}