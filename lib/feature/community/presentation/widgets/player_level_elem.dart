import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class PlayerLevelElem extends StatelessWidget {
  const PlayerLevelElem({
    super.key,
    required this.level,
  });

  final PlayerLevel level;

  String levelToJapanese() {
    return switch (level) {
      PlayerLevel.beginner => '初心者',
      PlayerLevel.intermediate => '中級者',
      PlayerLevel.advanced => '上級者',
      _ => '不明',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        levelToJapanese(),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
