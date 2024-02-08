import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  // J: init state function
  void initState() {
    super.initState();
    setTransparentStatusBar();
  }

  // J: transparent status bar function
  void setTransparentStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  // J: build splash page intro screen
  @override
  Widget build(BuildContext context) {
    // J: Main background color
    const mainBackgroundColor = Color(0xff141F23);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Container(
          color: mainBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                      // J: Logo illustration splash page
                      'lib/View/Asset/Splash_Page_Element/logo_illustration.png',
                      width: 300,
                      height: 300,
                      isAntiAlias: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
