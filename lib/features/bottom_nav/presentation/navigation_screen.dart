import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/home/presentation/homescreen.dart';
import 'package:mehdi0605/features/profile/presentation/profilescreen.dart';
import 'package:mehdi0605/gen/assets.gen.dart';

import '../../cummunity/presentation/community_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Homescreen(),
    CommunityScreen(),
    CommunityScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: pages[selectedIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.cWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        if (selectedIndex == index)
                          Container(
                            width: 45.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                            ),
                          ),
                        Image.asset(
                          Images[index],
                          width: 25.w,
                          height: 25.h,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black87,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      labels[index],
                      style: TextFontStyle.textStyle12w400cA1A1A1.copyWith(
                        fontSize: 12.sp,
                        color: selectedIndex == index
                            ? Colors.teal
                            : Colors.black87,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

List Images = [
  Assets.icons.homeIcon.path,
  Assets.icons.community2.path,
  Assets.icons.webiner.path,
  Assets.icons.profile.path,
];

List<String> labels = [
  "Home",
  "Forum",
  "Webinar ",
  "Profile",
];

// Dummy Screens
class ExamsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Exams Page", style: TextStyle(fontSize: 24)));
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Message Page", style: TextStyle(fontSize: 24)));
  }
}

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Forum Page", style: TextStyle(fontSize: 24)));
  }
}
