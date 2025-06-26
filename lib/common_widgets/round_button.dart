import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { color, line }

class RoundButton extends StatelessWidget {
  final String title;
  final double? width;
  final double height;
  final VoidCallback onPressed;
  final RoundButtonType type;

  const RoundButton({
    super.key,
    required this.title,
    this.width,
    this.height = 48,
    this.type = RoundButtonType.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: type == RoundButtonType.color
              ? TColor.primary
              : TColor.whiteText,
          borderRadius: BorderRadius.circular(30),
          border: type == RoundButtonType.line
              ? Border.all(color: TColor.primaryText, width: 1)
              : null,
          boxShadow: type == RoundButtonType.color
              ? [
                  BoxShadow(
                    color: TColor.primary.withValues(alpha: 0.3),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: type == RoundButtonType.color
                    ? TColor.whiteText
                    : TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const RoundIconButton({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 120,
        height: 74,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 25, height: 25, fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
