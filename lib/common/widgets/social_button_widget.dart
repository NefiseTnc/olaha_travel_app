// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SocialButton extends StatelessWidget {
  final Color bgColor;
  final String icon;
  final String? text;
  final void Function()? onTap;
  final bool? singleIcon;
  const SocialButton(
      {Key? key,
      required this.bgColor,
      required this.icon,
      this.text,
      this.onTap,
      this.singleIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: singleIcon != null
            ? const EdgeInsets.symmetric(horizontal: 30)
            : const EdgeInsets.symmetric(horizontal: 45),
        height: singleIcon != null ? 42 : 52,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
            text != null && text!.isNotEmpty
                ? Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        text!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
