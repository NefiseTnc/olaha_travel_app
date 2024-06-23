// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:olaha_travel_app/utils/app_color.dart';

class MenuItem extends StatelessWidget {
  final int currentIndex;
  final int menuIndex;
  final String iconUrl;
  final void Function() onTap;

  const MenuItem({
    Key? key,
    required this.currentIndex,
    required this.menuIndex,
    required this.iconUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          currentIndex == menuIndex
              ? Positioned(
                  top: 6,
                  left: 6,
                  bottom: 2,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.primaryColor),
                  ),
                )
              : const SizedBox(),
          Image.asset(
            iconUrl,
            width: 26,
            height: 26,
            color: AppColor.blackColor,
          ),
        ],
      ),
    );
  }
}
