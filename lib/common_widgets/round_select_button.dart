import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundSelectButton extends StatelessWidget {
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const RoundSelectButton({
    super.key,
    required this.title,
    this.isSelect = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: isSelect ? TColor.primaryText : Colors.transparent,
          borderRadius: BorderRadius.circular(17.5),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: isSelect ? TColor.whiteText : TColor.primaryText,
            fontSize: 14,
            fontWeight: isSelect ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
