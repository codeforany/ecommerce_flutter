import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  const SectionView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
     
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8,),

                Text(
                  subtitle,
                  style: TextStyle(color: TColor.placeholder, fontSize: 11),
                ),
              ],
            ),
          ),

          TextButton(
            onPressed: onPressed,
            child: Text(
              "View All",
              style: TextStyle(color: TColor.primaryText, fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
