import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/common_feature/auth/presentation/pages/confirm_page.dart';
import 'package:badminist_app/common_feature/auth/presentation/pages/login_page.dart';
import 'package:badminist_app/feature/home/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authProvider).when(
          data: (user) {
            if (user?.status == UserStatus.active) {
              return const HomePage();
            } else if (user?.status == UserStatus.inactive) {
              return ConfirmPage();
            } else {
              return LoginPage();
            }
          },
          error: (error, stackTrace) => const Center(child: Text('エラーが発生しました')),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
