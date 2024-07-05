// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class StoryItem extends StatelessWidget {
  final String storyImageUrl;
  const StoryItem({
    Key? key,
    required this.storyImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(2.0),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50 * .5),
        border: Border.all(color: AppColor.primaryColor),
      ),
      child: Image.asset(
        storyImageUrl,
      ),
    );
  }
}
