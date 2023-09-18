import 'dart:math';

import 'package:flutter/material.dart';

class FlippableCard extends StatelessWidget {
  const FlippableCard({
    super.key,
    required this.front,
    required this.back,
    this.isFlipped = false,
  });

  final Widget front;
  final Widget back;
  final bool isFlipped;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 500),
      tween: Tween(begin: 0, end: isFlipped ? 180 : 0),
      builder: (context, value, child) {
        final content = value >= 90 ? back : front;
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(value * pi / 180),
          alignment: Alignment.center,
          child: content,
        );
      },
    );
  }
}
