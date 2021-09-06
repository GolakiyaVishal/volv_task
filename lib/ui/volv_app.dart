import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volv_task/ui/screens/on_board/on_board_screen.dart';

class VolvApp extends StatelessWidget {
  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardScreen(),
    );
  }
}