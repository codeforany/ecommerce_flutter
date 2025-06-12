import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class CatCenterTextRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const CatCenterTextRow({
    super.key,
    required this.obj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: TColor.primary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            obj["name"].toString(),
            style: TextStyle(
              color: TColor.whiteText,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          Text(
            obj["subname"].toString(),
            style: TextStyle(
              color: TColor.whiteText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
