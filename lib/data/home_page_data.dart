import 'package:flutter/material.dart';
import 'package:olaha_travel_app/views/home/widgets/category_item.dart';
import 'package:olaha_travel_app/views/home/widgets/travel_story_item.dart';

class HomePageData {
  HomePageData._();
  static const List<Map<String, String>> storyImage = [
    {"imageUrl": "assets/images/story_1.png"},
    {"imageUrl": "assets/images/story_2.png"},
    {"imageUrl": "assets/images/story_3.png"},
    {"imageUrl": "assets/images/story_4.png"},
    {"imageUrl": "assets/images/story_5.png"},
    {"imageUrl": "assets/images/story_1.png"},
    {"imageUrl": "assets/images/story_2.png"},
    {"imageUrl": "assets/images/story_3.png"},
    {"imageUrl": "assets/images/story_4.png"},
    {"imageUrl": "assets/images/story_5.png"},
    {"imageUrl": "assets/images/story_1.png"},
    {"imageUrl": "assets/images/story_2.png"},
    {"imageUrl": "assets/images/story_3.png"},
    {"imageUrl": "assets/images/story_4.png"},
    {"imageUrl": "assets/images/story_5.png"},
    {"imageUrl": "assets/images/story_1.png"},
    {"imageUrl": "assets/images/story_2.png"},
    {"imageUrl": "assets/images/story_3.png"},
    {"imageUrl": "assets/images/story_4.png"},
    {"imageUrl": "assets/images/story_5.png"},
  ];

  static const List<Widget> categoryList = [
    CategoryItem(
      imageUrl: "assets/icons/asian-food-rice.png",
      categoryName: "Foods",
    ),
    CategoryItem(
      imageUrl: "assets/icons/shopping-cart-full.png",
      categoryName: "Groceries",
    ),
    CategoryItem(
      imageUrl: "assets/icons/hotel-double-bed.png",
      categoryName: "Groceries",
    ),
    CategoryItem(
      imageUrl: "assets/icons/calendar-favorite.png",
      categoryName: "Groceries",
    ),
    CategoryItem(
      imageUrl: "assets/icons/asian-food-rice.png",
      categoryName: "Foods",
    ),
    CategoryItem(
      imageUrl: "assets/icons/shopping-cart-full.png",
      categoryName: "Groceries",
    ),
    CategoryItem(
      imageUrl: "assets/icons/hotel-double-bed.png",
      categoryName: "Groceries",
    ),
    CategoryItem(
      imageUrl: "assets/icons/calendar-favorite.png",
      categoryName: "Groceries",
    ),
  ];

  static const List<Widget> travelStoryList = [
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_1.png",
      userName: "Randal Johnson",
      storyImageUrl: "assets/images/travel_image_1.png",
      title: "Film Photography Tour: Hanoi Hidden Temples",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_2.png",
      userName: "Trevor Harmon",
      storyImageUrl: "assets/images/travel_image_2.png",
      title: "Full Day Private Tour To Da Lat From Quang Trung",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_1.png",
      userName: "Randal Johnson",
      storyImageUrl: "assets/images/travel_image_1.png",
      title: "Film Photography Tour: Hanoi Hidden Temples",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_2.png",
      userName: "Trevor Harmon",
      storyImageUrl: "assets/images/travel_image_2.png",
      title: "Full Day Private Tour To Da Lat From Quang Trung",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_1.png",
      userName: "Randal Johnson",
      storyImageUrl: "assets/images/travel_image_1.png",
      title: "Film Photography Tour: Hanoi Hidden Temples",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_2.png",
      userName: "Trevor Harmon",
      storyImageUrl: "assets/images/travel_image_2.png",
      title: "Full Day Private Tour To Da Lat From Quang Trung",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_1.png",
      userName: "Randal Johnson",
      storyImageUrl: "assets/images/travel_image_1.png",
      title: "Film Photography Tour: Hanoi Hidden Temples",
    ),
    TravelStoryItem(
      userImageUrl: "assets/images/travel_stories_2.png",
      userName: "Trevor Harmon",
      storyImageUrl: "assets/images/travel_image_2.png",
      title: "Full Day Private Tour To Da Lat From Quang Trung",
    ),
  ];
}
