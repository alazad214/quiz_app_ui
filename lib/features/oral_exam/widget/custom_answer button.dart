
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAnswerButton extends StatefulWidget {
  const CustomAnswerButton({super.key, required this.buttonName, required this.color, required this.borderColor, required this.textStyle, required this.onTap});

  final String buttonName;
  final Color color;
  final Color borderColor;
  final TextStyle textStyle;
  final VoidCallback onTap;

  @override
  State<CustomAnswerButton> createState() => _CustomAnswerButtonState();
}

class _CustomAnswerButtonState extends State<CustomAnswerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        //padding: EdgeInsets.symmetric(horizontal: 10,),
        height: 42.h,
        width: 174.w,
        decoration: BoxDecoration(
          border:Border.all(
              color: widget.borderColor,
              width: 2
          ) ,
          color: widget.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Center(child: Text(widget.buttonName,style: widget.textStyle,)),
        ),
      ),
    );
  }
}
