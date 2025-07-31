import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const ProfileRow({super.key, required this.title, required this.subtitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: TColor.bg,
          border: Border(
            bottom: BorderSide(
              color: Colors.black.withValues(alpha: 0.05),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
      
            Icon(Icons.navigate_next, color: TColor.placeholder, size: 25),
          ],
        ),
      ),
    );
  }
}
