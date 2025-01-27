import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/features/home/home_page_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePageScreen(),
    MessagePage(),
    ForumPage(),
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
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                            ),
                          ),
                        Icon(
                          icons[index],
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                          size: 26,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      labels[index],
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
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

List<IconData> icons = [
  Icons.home,
  Icons.message,
  Icons.group,
  Icons.person,
];

List<String> labels = [
  "Home",
  "Message",
  "Forum",
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

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile Page", style: TextStyle(fontSize: 24)));
  }
}
