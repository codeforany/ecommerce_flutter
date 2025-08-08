import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common_widgets/round_button.dart';
import 'package:flutter/material.dart';

class MyOrderRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const MyOrderRow({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Order No: 1947852",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
                SizedBox(width: 15),
      
                Text(
                  "05-08-2025",
                  style: TextStyle(
                    color: TColor.placeholder,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
      
            SizedBox(height: 8),
      
            Row(
              children: [
                Text(
                  "Tracking Number:",
                  style: TextStyle(color: TColor.placeholder, fontSize: 14),
                ),
      
                SizedBox(width: 8),
      
                Expanded(
                  child: Text(
                    "IWAD1947852",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
      
            SizedBox(height: 8),
      
            Row(
              children: [
                Text(
                  "Quantity:",
                  style: TextStyle(color: TColor.placeholder, fontSize: 14),
                ),
      
                SizedBox(width: 8),
      
                Expanded(
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
                Text(
                  "Total Amount:",
                  style: TextStyle(color: TColor.placeholder, fontSize: 14),
                ),
      
                SizedBox(width: 8),
      
                Text(
                  "112\$",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
      
            SizedBox(height: 15),
      
            Row(
              children: [
                RoundButton(
                  title: "Details",
                  height: 35,
                  width: 100,
                  type: RoundButtonType.line,
                  onPressed: () {},
                ),
      
                Spacer(),
      
                Text(
                  "Delivered",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
