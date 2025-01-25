import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../code_kepper.dart';
import '../features/home/widgets/exam_tile.dart';

class examGridView extends StatelessWidget {
  const examGridView({
    super.key,
    required this.examimages,
  });

  final List<Map<String, dynamic>> examimages;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 16.w,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: examimages.length,
        itemBuilder: (context, index) => ExamTile(
          topics: examimages[index]['category'],
          examimages: examimages[index]['image'],
        ),
      ),
    );
  }
}
