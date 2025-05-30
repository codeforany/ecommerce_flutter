import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String selectIcon;
  final String unSelectIcon;
  final String title;
  final bool isSelect;
  const TabButton({
    super.key,
    required this.title,
    required this.selectIcon,
    required this.unSelectIcon,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        isSelect ? selectIcon : unSelectIcon,
        width: 25,
        height: 25,
        fit: BoxFit.contain,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelect ? TColor.primary : TColor.placeholder,
          fontSize: 11,
          fontWeight: isSelect ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
