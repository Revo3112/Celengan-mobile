import 'dart:ui';

import 'package:flutter/material.dart';

/* GLOBAL */
// J: main background color app
const Color mainBackgroundColor = Color(0xff141F23);
// J: determine screen width and height
FlutterView view = WidgetsBinding
    .instance.platformDispatcher.views.first; // getting FlutterView
// Dimensions in physical pixels (px)
Size size = view.physicalSize;
double screenW = size.width;
double screenH = size.height;

/* CAROUSEL.DART */
// application assets
const String assetPath = 'lib/View/Asset/';
const String appLogo = '${assetPath}Splash_Page_Element/celengan_logo.png';
const String appLang = '${assetPath}Language/lang_icon.png';

// login button (carousel.dart)
const Color loginButtonColorLight = Color(0xff61C6FF);
const Color loginButtonColorDark = Color(0xff2A83B6);

// register button (carousel.dart)
const Color registerButtonColorStroke = Color(0xff5C94A8);
const Color registerButtonColorText = Color(0xff61C6FF);
