import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volv_task/ui/app_color.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final String icon;
  final Function onTap;

  const LoginButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap(),
      elevation: 2,
      color: AppColor.button,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52)),
      child: Container(
        width: Get.width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 2.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 32, width: 32, child: Image.asset(icon)),
            Expanded(
                child: Center(
                    child: Text(
              label,
              style:
                  TextStyle(color: AppColor.black, fontWeight: FontWeight.w500),
            )))
          ],
        ),
      ),
    );
  }
}
