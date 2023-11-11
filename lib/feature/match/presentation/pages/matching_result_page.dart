import 'package:badminist_app/feature/match/application/match_notifier.dart';
import 'package:badminist_app/feature/match/presentation/widgets/player_card.dart';
import 'package:badminist_app/widgets/async_container.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class MatchingResultPage extends HookConsumerWidget {
  const MatchingResultPage(
      {super.key, required this.numCourts, required this.rule});
  final int numCourts;
  final Rule rule;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchNotifier = ref.read(matchNotifierProvider.notifier);
    final confirm = useState<bool>(false);

    return MainScaffold(
      body: AsyncContainer(
        asyncValue: ref.watch(matchNotifierProvider),
        builder: (context, data) {
          if (data == null) {
            return const Center(
              child: Text('マッチング結果がありません'),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.matches.length,
                itemBuilder: (context, index) {
                  final matches = data.matches;
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "第${index + 1}コート",
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: matches[index]
                                        .left
                                        .players
                                        .map((p0) => PlayerCard(player: p0))
                                        .toList(),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: matches[index]
                                        .right
                                        .players
                                        .map((p0) => PlayerCard(player: p0))
                                        .toList(),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              // 横スクロールのRowWidget
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...data.restPlayers!
                            .map((p0) => PlayerCard(player: p0))
                            .toList(),
                      ],
                    ),
                  ),
                  confirm.value
                      ? ElevatedButton(
                          onPressed: () {
                            matchNotifier.generateMatch(numCourts, rule);
                            confirm.value = false;
                          },
                          child: const Text('次の試合'),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                matchNotifier.generateMatch(numCourts, rule);
                              },
                              child: const Text('やり直し'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                for (var match in data.matches) {
                                  for (var player in match.left.players) {
                                    matchNotifier.incrementNumGames(player);
                                  }
                                  for (var player in match.right.players) {
                                    matchNotifier.incrementNumGames(player);
                                  }
                                }
                                confirm.value = true;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                              ),
                              child: const Text('確定'),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
