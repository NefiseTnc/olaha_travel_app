import 'package:flutter/material.dart';
import 'package:olaha_travel_app/data/home_page_data.dart';
import 'package:olaha_travel_app/views/home/widgets/custom_appbar.dart';
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
            const ExperienceItem(),
          ],
        ),
      ),
    );
  }
}
