import 'package:flutter/material.dart';
import 'package:olaha_travel_app/navigation_menu/widgets/menu_item.dart';
import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/home/home_page.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  late double deviceTopPadding;
  late double deviceBottomPadding;
  late double deviceWidth;
  late double deviceHeight;

  int _currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    deviceTopPadding = MediaQuery.of(context).padding.top;
    deviceBottomPadding = MediaQuery.of(context).padding.bottom;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        bottomNavigationBar: Container(
          width: deviceWidth,
          height: deviceBottomPadding + 45,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppColor.grayColor2))),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 15.0, horizontal: deviceWidth * .07),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuItem(
                    onTap: () => setState(() {
                          _currentIndex = 0;
                        }),
                    currentIndex: _currentIndex,
                    menuIndex: 0,
                    iconUrl: "assets/icons/astronomy_planet.png"),
                MenuItem(
                    onTap: () => setState(() {
                          _currentIndex = 1;
                        }),
                    currentIndex: _currentIndex,
                    menuIndex: 1,
                    iconUrl: "assets/icons/earth.png"),
                MenuItem(
                    onTap: () => setState(() {
                          _currentIndex = 2;
                        }),
                    currentIndex: _currentIndex,
                    menuIndex: 2,
                    iconUrl: "assets/icons/calendar.png"),
                MenuItem(
                    onTap: () => setState(() {
                          _currentIndex = 3;
                        }),
                    currentIndex: _currentIndex,
                    menuIndex: 3,
                    iconUrl: "assets/icons/people_woman.png"),
                MenuItem(
                    onTap: () => setState(() {
                          _currentIndex = 4;
                        }),
                    currentIndex: _currentIndex,
                    menuIndex: 4,
                    iconUrl: "assets/icons/profile.png"),
              ],
            ),
          ),
        ));
  }
}
