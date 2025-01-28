import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearnExamButton extends StatefulWidget {
  const LearnExamButton({super.key, required this.backgroundColor, required this.buttonName, required this.onTap, required this.textColor});

  final Color backgroundColor;
  final String buttonName;
  final VoidCallback onTap;
  final TextStyle textColor;

  @override
  State<LearnExamButton> createState() => _LearnExamButtonState();
}

class _LearnExamButtonState extends State<LearnExamButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 174.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed:widget.onTap,
          child: Text(
            widget.buttonName,
            style:widget.textColor
          )),
    );
  }
}
