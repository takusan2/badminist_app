import 'package:badminist_app/constant/constant.dart';
import 'package:badminist_app/feature/home/application/home_notifier.dart';
import 'package:badminist_app/feature/home/presentation/widget/account_icon_button.dart';
import 'package:badminist_app/feature/home/presentation/widget/community_card.dart';
import 'package:badminist_app/widgets/async_container.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainScaffold(
      appBar: AppBar(
          title: Text(
            Constant.title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 24,
            ),
          ),
          actions: const [
            AccountIconButton(),
            SizedBox(width: 20),
          ],
          centerTitle: true),
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
                );
              },
            ),
          );
        },
      ),
    );
  }
}
