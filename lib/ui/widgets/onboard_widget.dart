import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volv_task/data/models/onboard_model.dart';
import 'package:volv_task/ui/app_color.dart';

class OnBoardWidget extends StatelessWidget {
  final OnBoardModel onBoardModel;

  const OnBoardWidget({
    Key? key,
    required this.onBoardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.12),
      child: Column(
        children: [
          extraHeight(size: Get.height * 0.08),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(onBoardModel.image),
          ),
          extraHeight(),
          Text(
            onBoardModel.title,
            style: TextStyle(color: AppColor.black, fontSize: 26),
          ),
          extraHeight(),
          Text(
            onBoardModel.subTitle,
            style: TextStyle(color: AppColor.slowBlack, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  extraHeight({double size = 24}) => SizedBox(height: size);
}
