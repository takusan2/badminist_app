import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 24,
        ),
      ),
      actions: actions,
      centerTitle: true,
    );
  }
}
