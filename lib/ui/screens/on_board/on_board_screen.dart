import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volv_task/ui/app_color.dart';
import 'package:volv_task/ui/app_images.dart';
import 'package:volv_task/ui/widgets/login_button.dart';
import 'package:volv_task/ui/widgets/onboard_widget.dart';
import 'package:volv_task/ui/widgets/small_dot.dart';

import 'on_board_controller.dart';

class OnBoardScreen extends StatelessWidget {
  final OnBoardLogic _controller = Get.put(OnBoardLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(gradient: AppColor.gradient1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                height: Get.height * 0.64,
                child: PageView(
                  onPageChanged: _controller.onPageChange,
                  children: [
                    OnBoardWidget(
                      onBoardModel: _controller.onBoardList[0],
                    ),
                    OnBoardWidget(
                      onBoardModel: _controller.onBoardList[1],
                    ),
                    OnBoardWidget(
                      onBoardModel: _controller.onBoardList[2],
                    )
                  ],
                )),
            Obx(() {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmallDot(isSelected: 0 == _controller.index.value),
                  SmallDot(isSelected: 1 == _controller.index.value),
                  SmallDot(isSelected: 2 == _controller.index.value),
                ],
              );
            }),
            const SizedBox(height: 24.0),
            LoginButton(
              label: 'Sign in with Apple',
              icon: AppImage.apple,
              onTap: () =>  _controller.onAppleTap(),
            ),
            const SizedBox(height: 12.0),
            LoginButton(
              label: 'Sign in with Google',
              icon: AppImage.google,
              onTap: () => _controller.onGoogleTap(),
            ),
            const SizedBox(height: 32.0),
            signUpView(),
          ],
        ),
      ),
    );
  }

  Widget signUpView() {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "Don't have an account? ",
          style: TextStyle(color: AppColor.lightBrown)),
      TextSpan(
          text: 'Sign up',
          style: TextStyle(color: AppColor.black, fontWeight: FontWeight.w500))
    ]));
  }
}
