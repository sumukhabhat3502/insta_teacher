import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:insta_teacher/main.dart';
// Import the package where FlutterSplashScreen.fadeIn is defined

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("assets/images/dart_bird.png"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const MyHomePage(title: 'My Page',),
    );
  }
}
