import 'package:badminist_app/feature/community/application/player_list_notifier.dart';
import 'package:badminist_app/feature/community/presentation/widgets/players_table.dart';
import 'package:badminist_app/widgets/async_container.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class CommunityPage extends HookConsumerWidget {
  const CommunityPage({
    super.key,
    required this.communityId,
  });
  final String communityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainScaffold(
        appBarTitle: '選手一覧',
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(playerListNotifierProvider.notifier).addPlayer(
                  name: 'tess',
                  gender: PlayerGender.male,
                  age: 22,
                  level: PlayerLevel.beginner,
                  numGames: 0,
                  status: PlayerStatus.attend,
                );
          },
          child: const Icon(Icons.add),
        ),
        body: AsyncContainer<List<PlayerReadModel>?>(
          asyncValue: ref.watch(playerListNotifierProvider),
          builder: (context, data) {
            if (data == null) {
              return const Center(
                child: Text('選手がいません'),
              );
            }
            return SimpleTablePage(
              data: List.generate(data.length, (index) {
                final player = data[index];
                return [
                  Text(player.name ?? ''),
                  Text(player.level.toString()),
                ];
              }).toList(),
              titleColumn: data.map((e) => e.name ?? '').toList(),
              titleRow: const ['名前', 'レベル'],
            );
          },
        ));
  }
}
