import 'package:flutter/material.dart';

class PlayerNumGamesElem extends StatelessWidget {
  const PlayerNumGamesElem({
    super.key,
    required this.numGames,
  });

  final int numGames;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        numGames.toString(),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
