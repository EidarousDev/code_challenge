import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatelessWidget {
  final bool changeHeight;
  const MyAnimatedContainer({required this.changeHeight, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      height: changeHeight ? 75 : 150,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Color(0xff5855DC)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Good luck",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 36),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.white,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
