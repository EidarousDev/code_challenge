import 'package:flutter/material.dart';

import 'good_luck_view.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
              child: Text(
                "Hi,"
                "\n\nthe tasks listed below should be done on the second view."
                "\n\n1. Integrate the AnimatedContainer below to the next view "
                "so it can be reordered there too and it should not stop changing "
                "his size and should not overlap the other boxes. "
                "The space between the boxes should stay at all time the same. "
                "\n\n2. The overflowing text should be completely visible inside the "
                "red box and the height of the box should be adjusted to his content."
                "\n\n3. Thrown exceptions during the development must be solved."
                "\n\n4. Refactoring the code can be done if wanted but the "
                "ReorderableGridView cannot be replaced."
                "\n\nInfo: You get to the second view via the button on the bottom.",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, height: 18 / 14),
              ),
            ),
          ),
          GoodLuckView(),
        ],
      ),
    );
  }
}
