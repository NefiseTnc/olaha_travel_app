// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final double? width;
  final double? height;
  final Color bgColor;
  final Color textColor;
  final double? borderRadius;
  final String text;
  final TextStyle? textStyle;

  const AppButton({
    Key? key,
    this.onTap,
    this.width,
    this.height,
    required this.bgColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 248,
        height: height ?? 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 16)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle ??
              TextStyle(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
