import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/app_colors.dart';
import '../gen/assets.gen.dart';

class CarouselContainer extends StatefulWidget {
  const CarouselContainer({
    super.key,
    required this.carouseltitle,
    required this.carouseltext,
    required this.carouseltime,
    required this.carouselimage,
    required this.carousellength,
  });

  final String carouselimage;
  final String carouseltitle;
  final String carouseltext;
  final String carouseltime;
  final int carousellength;

  @override
  State<CarouselContainer> createState() => _CarouselContainerState();
}

class _CarouselContainerState extends State<CarouselContainer> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
