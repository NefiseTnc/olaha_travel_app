import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: AppColor.grayColor2),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
