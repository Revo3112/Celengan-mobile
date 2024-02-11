import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Center(
        child: Column(children: [
          Container(
            color: Colors.red,
            child: Text("Bottom Bar"),
          )
        ]),
      ),
    );
  }
}
