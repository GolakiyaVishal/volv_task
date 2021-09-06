import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volv_task/data/models/story_model.dart';
import 'package:volv_task/ui/app_color.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel storyModel;

  const StoryWidget({
    Key? key,
    required this.storyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: SizedBox(
        height: Get.height * 0.58,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              storyModel.title,
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Text(
                storyModel.description,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 20,
                      color: AppColor.grey,
                    ),
                    Text(
                      ' Today',
                      style: TextStyle(color: AppColor.grey),
                    )
                  ],
                ),
                Text('CHECK IT  OUT', style: TextStyle(color: AppColor.orange)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Share ',
                      style: TextStyle(color: AppColor.grey),
                    ),
                    Icon(
                      Icons.ios_share,
                      size: 20,
                      color: AppColor.grey,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
