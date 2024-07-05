import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hanoi, Vietnam",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/cloud.png",
                  width: 22,
                  height: 16,
                  color: AppColor.textGrayColor,
                ),
                const SizedBox(width: 5),
                const Text("17 °C")
              ],
            )
          ],
        ),
        Image.asset(
          "assets/icons/search.png",
          width: 30,
          height: 30,
          color: AppColor.blackColor,
        ),
      ],
    );
  }
}
