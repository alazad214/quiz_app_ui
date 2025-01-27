import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../features/home/widgets/exam_tile.dart';

class ExamGridView extends StatelessWidget {
  const ExamGridView({
    super.key,
    required this.examcategoryimages,
  });

  final List<Map<String, dynamic>> examcategoryimages;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ensure a fixed height
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 16.w,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: examcategoryimages.length,
        itemBuilder: (context, index) => ExamTile(
          topics: examcategoryimages[index]['category'],
          examimages: examcategoryimages[index]['image'],
        ),
      ),
    );
  }
}
