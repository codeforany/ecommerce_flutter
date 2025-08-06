import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class SettingSwitchRow extends StatelessWidget {
  final String title;
  final bool isOn;
  final Function(bool) onChanged;

  const SettingSwitchRow({
    super.key,
    required this.title,
    this.isOn = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),

        Switch(value: isOn, activeColor: Colors.green, onChanged: (isOnVal) {
          onChanged(isOnVal);
        }),
      ],
    );
  }
}
