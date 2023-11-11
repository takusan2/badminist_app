import 'package:badminist_app/feature/community/presentation/pages/add_player_dialog.dart';
import 'package:badminist_app/feature/community/presentation/pages/edit_palyer_dialog.dart';
import 'package:badminist_app/feature/community/presentation/widgets/player_level_elem.dart';
import 'package:badminist_app/feature/community/presentation/widgets/player_num_games_elem.dart';
import 'package:badminist_app/feature/community/presentation/widgets/player_status_elem.dart';
import 'package:badminist_app/feature/community/application/player_list_notifier.dart';
import 'package:badminist_app/feature/community/presentation/widgets/custom_table.dart';
import 'package:badminist_app/feature/match/presentation/pages/matching_config_dialog.dart';
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
    final notifier = ref.read(playerListNotifierProvider.notifier);
    return MainScaffold(
      appBarTitle: '選手一覧',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) => AddPlayerDialog());
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.7),
                child: AsyncContainer<List<PlayerReadModel>?>(
                  asyncValue: ref.watch(playerListNotifierProvider),
                  builder: (context, data) {
                    if (data == null) {
                      return const Center(
                        child: Text('選手がいません'),
                      );
                    }
                    return CustomTable(
                      legend: Center(
                        child: Text(
                          '名前',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      titleColumn: [
                        Center(
                          child: Text(
                            '参加',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '試合数',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        // TODO: レベルを利用した組合せ生成が可能になったら表示する
                        // Center(
                        //   child: Text(
                        //     'レベル',
                        //     style: TextStyle(
                        //       color: Theme.of(context).colorScheme.onPrimary,
                        //     ),
                        //   ),
                        // ),
                        Center(
                          child: Text(
                            '編集',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        )
                      ],
                      titleRow: data
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  e.name.toString(),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      data: List.generate(
                        data.length,
                        (index) {
                          final player = data[index];
                          return [
                            PlayerStatusElem(
                              status: player.status,
                              onPressed: () {
                                notifier.changePlayerProperty(
                                  playerId: player.id,
                                  status: player.status == PlayerStatus.attend
                                      ? PlayerStatus.absence
                                      : PlayerStatus.attend,
                                  numGames: player.numGames,
                                  age: player.age,
                                  level: player.level,
                                  name: player.name,
                                  gender: player.gender,
                                );
                              },
                            ),
                            PlayerNumGamesElem(numGames: player.numGames),
                            // TODO: レベルを利用した組合せ生成が可能になったら表示する
                            // PlayerLevelElem(level: player.level),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      EditPlayerDialog(player: player),
                                );
                              },
                              icon: const Icon(Icons.edit, size: 15),
                            ),
                          ];
                        },
                      ).toList(),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 全ての選手の試合数をリセットしますが、よろしいですか？と表示する
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('確認'),
                          content: const Text(
                            '全ての選手の試合数をリセットしますが、よろしいですか？',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('キャンセル'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                notifier.resetAllPlayerNumGames();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      '試合数をリセット',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => MatchingConfigDialog());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Text(
                      '組合せを作成',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
