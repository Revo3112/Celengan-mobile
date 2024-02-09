import 'package:flutter/material.dart';

import '../constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // J: Celengan Logo
        Container(
          height: 70,
          color: Colors.transparent,
          alignment: Alignment.centerLeft,
          child: Image.asset(
            appLogo,
            width: 150,
            height: 150,
          ),
        ),
        // J: GAP
        const SizedBox(
          width: 30,
        ),
        // J: Language changer
        Container(
          height: 30,
          width: screenW - 922,
          // color: Colors.red,
          alignment: Alignment.topRight,
          padding: const EdgeInsets.fromLTRB(0, 3.5, 7.5, 0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(appLang, width: 20, height: 20),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Bahasa Indonesia",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
