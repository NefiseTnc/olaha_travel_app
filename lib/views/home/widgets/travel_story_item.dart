import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class TravelStoryItem extends StatelessWidget {
  final String userImageUrl;
  final String userName;
  final String storyImageUrl;
  final String title;
  const TravelStoryItem({
    Key? key,
    required this.userImageUrl,
    required this.userName,
    required this.storyImageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 240,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.grayColor2,
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28 * .5),
                        ),
                        child: Image.asset(
                          userImageUrl,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/icons/heart.png",
                    color: AppColor.grayColor,
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              height: 135,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Image.asset(
                storyImageUrl,
                height: 135,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 13, color: AppColor.blackColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
