import 'package:badminist_app/feature/community/presentation/pages/community_page.dart';
import 'package:badminist_app/feature/home/application/home_notifier.dart';
import 'package:badminist_app/feature/home/presentation/pages/create_community/create_community_dialog.dart';
import 'package:badminist_app/feature/home/presentation/pages/home/home_page_state.dart';
import 'package:badminist_app/feature/home/presentation/widgets/account_icon_button.dart';
import 'package:badminist_app/feature/home/presentation/widgets/community_card.dart';
import 'package:badminist_app/widgets/async_container.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeNotifierProvider.notifier);
    final stateNotifier = ref.read(homePageStateProvider.notifier);

    return MainScaffold(
      appBarActions: const [
        AccountIconButton(),
        SizedBox(width: 20),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => CreateCommunityDialog(),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
      body: AsyncContainer<List<CommunityReadModel>?>(
        asyncValue: ref.watch(homeNotifierProvider),
        builder: (context, data) {
          if (data == null) {
            return const Center(child: Text('データがありません'));
          }
          final communities = data;
          if (communities.isEmpty) {
            return const Center(child: Text('Communityがありません'));
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: communities.length,
              itemBuilder: (context, index) {
                final community = communities[index];
                return CommunityCard(
                    name: community.name ?? '',
                    description: community.description ?? '',
                    onDeleteIconPressed: () {
                      notifier.deleteCommunity(
                        community.id ?? '',
                      );
                    },
                    onTapCard: () {
                      stateNotifier.selectCommunity(
                        community.id ?? '',
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CommunityPage(
                            communityId: community.id ?? '',
                          ),
                        ),
                      );
                    });
              },
            ),
          );
        },
      ),
    );
  }
}
