import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const AppTextFormField({Key? key, required this.hintText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 19, top: 8, bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grayColor),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
