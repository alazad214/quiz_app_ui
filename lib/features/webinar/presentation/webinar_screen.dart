import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/seminar_container.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class WebinarScreen extends StatefulWidget {
  const WebinarScreen({super.key});

  @override
  State<WebinarScreen> createState() => _WebinarScreenState();
}

class _WebinarScreenState extends State<WebinarScreen> {
  final List<Map<String, dynamic>> carouselData = [
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Arina',
      'time': '24h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'John',
      'time': '12h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Sarah',
      'time': '48h',
    },
  ];

  int _currentIndex = 0;

  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Webinar',
          style: TextFontStyle.textStyle16w500c333333,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            UIHelper.verticalSpace(24.h),
            GestureDetector(
              onTap: () {
                NavigationService.navigateTo(Routes.webinarDetails);
              },
              child: SeminarContainer(
                carouselLength: carouselData.length,
                carouselImage: carouselData[_currentIndex]['image'],
              ),
            ),
            UIHelper.verticalSpace(8.h),
            SeminarContainer(
              carouselLength: carouselData.length,
              carouselImage: carouselData[_currentIndex]['image'],
            ),
            UIHelper.verticalSpace(8.h),
            SeminarContainer(
              carouselLength: carouselData.length,
              carouselImage: carouselData[_currentIndex]['image'],
            ),
          ],
        ),
      ),
    );
  }
}
