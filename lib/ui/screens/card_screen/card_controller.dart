import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:volv_task/data/models/story_model.dart';

class CardController extends GetxController {

  late VideoPlayerController videoController;
  RxBool isLoaded = false.obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    videoController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        isLoaded.value = true;
        notifyChildrens();
        videoController.play();
      });
  }

  StoryModel storyModel = StoryModel('Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum eleifend erat id pharetra. Fusce congue dapibus tellus, id aliquet ante congue in. Curabitur sed placerat est. Sed consequat ornare dui. Mauris accumsan congue faucibus. Duis a libero et sem viverra accumsan. Morbi et dignissim lectus. Sed id tempor massa, sed facilisis quam.');

}
