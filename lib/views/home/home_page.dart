// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:olaha_travel_app/data/home_page_data.dart';
import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/home/widgets/custom_app_bar.dart';
import 'package:olaha_travel_app/views/home/widgets/experience.dart';
import 'package:olaha_travel_app/views/home/widgets/line.dart';
import 'package:olaha_travel_app/views/home/widgets/story_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double deviceTopPadding;
  late double deviceBottomPadding;
  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceTopPadding = MediaQuery.of(context).padding.top;
    deviceBottomPadding = MediaQuery.of(context).padding.bottom;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceTopPadding,
            bottom: deviceBottomPadding,
            right: 20,
            left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: HomePageData.storyImage.length,
                itemBuilder: (_, index) {
                  String item =
                      HomePageData.storyImage[index]["imageUrl"] ?? '';
                  return StoryItem(storyImageUrl: item);
                },
              ),
            ),
            const Line(),
            const Text(
              "Experiences in spotlight",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ExperienceItem(),
                  ExperienceItem(),
                  ExperienceItem(),
                ],
              ),
            ),
            const Line(),
            SizedBox(
              height: 93,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: HomePageData.categoryList,
              ),
            ),
            const Line(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Travel Stories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Show all",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.primaryColor,
                      size: 18,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: HomePageData.travelStoryList,
              ),
            ),
            const Line(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
