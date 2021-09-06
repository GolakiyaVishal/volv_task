import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:volv_task/ui/widgets/story_widget.dart';

import '../../app_color.dart';
import 'card_controller.dart';

class CardScreen extends StatelessWidget {
  final CardController _controller = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -180,
            left: 0,
            right: 0,
            bottom: Get.height * 0.4,
            child: SizedBox(
              height: Get.height * 0.4,
              child: Obx(() {
                return Center(
                  child: _controller.isLoaded.value
                      ? AspectRatio(
                          aspectRatio: 1.1,
                          child: VideoPlayer(_controller.videoController),
                        )
                      : Container(
                          height: Get.height * 0.4,
                          child: LinearProgressIndicator(
                            color: AppColor.grey,
                            backgroundColor: AppColor.lightBrown,
                          ),
                        ),
                );
              }),
            ),
          ),
          Positioned(
            top: Get.height * 0.36,
            left: 0,
            right: 0,
            bottom: 12,
            child: SizedBox(
              height: Get.height * 0.62,
              child: Card(
                margin: EdgeInsets.all(8.0),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: AppColor.white,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    StoryWidget(
                      storyModel: _controller.storyModel,
                    ),
                    StoryWidget(
                      storyModel: _controller.storyModel,
                    ),
                    StoryWidget(
                      storyModel: _controller.storyModel,
                    ),
                    StoryWidget(
                      storyModel: _controller.storyModel,
                    ),
                    StoryWidget(
                      storyModel: _controller.storyModel,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
