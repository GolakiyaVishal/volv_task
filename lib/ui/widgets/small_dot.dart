import 'package:flutter/material.dart';
import 'package:volv_task/ui/app_color.dart';

class SmallDot extends StatelessWidget {
  final bool isSelected;
  const SmallDot({Key? key,  required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(shape: BoxShape.circle,
      color: isSelected ? AppColor.black : AppColor.lightBrown),
    );
  }
}
