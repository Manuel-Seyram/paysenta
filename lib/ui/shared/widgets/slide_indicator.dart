import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  final bool isActive;
  const SlideIndicator({Key? key, required this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 4.0),
      width: 9,
      height: 9,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          color: isActive ? const Color(0xFFFFFFFF) : const Color(0xFF848484)),
    );
  }
}
