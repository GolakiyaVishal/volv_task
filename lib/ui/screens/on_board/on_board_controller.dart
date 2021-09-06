import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:volv_task/data/models/onboard_model.dart';
import 'package:volv_task/ui/app_color.dart';
import 'package:volv_task/ui/app_images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:volv_task/ui/screens/card_screen/card_screen.dart';

class OnBoardLogic extends GetxController {
  RxInt index = 0.obs;

  final onBoardList = [
    OnBoardModel(
        'Lorem ipsum',
        'Lorem ipsum dolor sit amet, consectetur adipicing elit',
        AppImage.onBoard),
    OnBoardModel(
        'Dolor sit amet',
        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
        AppImage.onBoard),
    OnBoardModel(
        'Consectetur adipiscing',
        'quis nostrud exercitation ullamco laboris nisi ut aliquip ex',
        AppImage.onBoard),
  ];

  @override
  void onInit() {
    super.onInit();
    Firebase.initializeApp();
  }

  void onPageChange(int value) {
    index.value = value;
    notifyChildrens();
  }

  Future<void> onGoogleTap() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    try {
      GoogleSignInAccount? auth = await _googleSignIn.signIn();

      if(auth != null) {
        Get.to(CardScreen());
      }

    } catch (error) {
      print(error);
    }

  }


  void onAppleTap() {
    Get.to(CardScreen());
  }
}
