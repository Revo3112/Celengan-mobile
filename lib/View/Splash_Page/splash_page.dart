import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import '../Carousel_Page/carousel_page.dart';
import '../constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String _imageAssetPath =
      'lib/View/Asset/Splash_Page_Element/logo_illustration.png';
  double _imageWidth = 270;
  double _imageHeight = 270;

  @override
  void initState() {
    super.initState();
    setTransparentStatusBar();

    // J: Start a timer to change the image asset after 3 seconds
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _imageAssetPath =
            'lib/View/Asset/Splash_Page_Element/celengan_logo.png';
        _imageWidth = 240;
        _imageHeight = 240;
        Timer(const Duration(seconds: 1), () {
          Navigator.pushReplacement(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 600),
                child: const CarouselPage(),
              ));
        });
      });
    });
  }

  void setTransparentStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          color: mainBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  _imageAssetPath,
                  width: _imageWidth,
                  height: _imageHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
