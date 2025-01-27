import 'package:flutter/material.dart';

class CarouselContainer extends StatefulWidget {
  const CarouselContainer({super.key});

  @override
  State<CarouselContainer> createState() => _CarouselContainerState();
}

class _CarouselContainerState extends State<CarouselContainer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CarouselContainer'),
      ),
    );
  }
}
