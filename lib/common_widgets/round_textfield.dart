import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hitText;
  final String errorMessage;
  final bool isError;
  final bool obscureText;
  final bool isValid;
  final TextInputType? keyboardType;
  final int? minLine;
  final int? maxLine;

  const RoundTextfield({
    super.key,
    this.controller,
    required this.hitText,
    this.errorMessage = "",
    this.isError = false,
    this.obscureText = false,
    this.isValid = false,
    this.keyboardType,
    this.minLine,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
            color: TColor.whiteText,
            border: isError
                ? Border.all(color: TColor.primary, width: 1)
                : null,
            boxShadow: isError
                ? null
                : [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: controller,
                keyboardType: keyboardType,
                maxLines: obscureText ? 1 : maxLine,
                minLines: obscureText ? 1 : minLine,
                obscureText: obscureText,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  labelText: hitText,
                  hintText: hitText,
                  suffixIcon: isError
                      ? Icon(Icons.close, color: TColor.primary)
                      : isValid ? Icon(Icons.done, color: TColor.secondary) : null,
                  hintStyle: TextStyle(color: TColor.placeholder),
                  labelStyle: TextStyle(
                    color: TColor.placeholder,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isError)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              errorMessage,
              style: TextStyle(color: TColor.primary, fontSize: 11),
            ),
          ),
      ],
    );
  }
}
