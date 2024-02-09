import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

import 'top_bar.dart';
import 'main_bar.dart';
import 'bottom_bar.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TopBar(),
              MainBar(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
