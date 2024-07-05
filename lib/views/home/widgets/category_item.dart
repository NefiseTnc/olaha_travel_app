
import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  const CategoryItem({
    Key? key,
    required this.imageUrl,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.grayColor2),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 24,
                  top: 25,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(32 * .5)),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    imageUrl,
                    width: 36,
                    height: 36,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            categoryName,
            style: const TextStyle(
                color: AppColor.blackColor,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
