import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/widgets/async_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountIconButton extends HookConsumerWidget {
  const AccountIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authProvider.notifier);
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Account'),
                backgroundColor: Theme.of(context).colorScheme.onBackground,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AsyncContainer(
                      asyncValue: ref.watch(authProvider),
                      builder: (context, data) {
                        if (data == null) {
                          return const Center(child: Text('データがありません'));
                        }
                        final user = data;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('ユーザー名'),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                user.name ?? '',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            const Text('メールアドレス'),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                user.email ?? '',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {
                        authNotifier.logout();
                        Navigator.of(context).pop();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.error,
                      ),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onError,
                        ),
                      ),
                    ),
                  ],
                ),
                actionsPadding: EdgeInsets.zero,
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            });
      },
      icon: Icon(
        Icons.account_circle_outlined,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 35,
      ),
    );
  }
}
