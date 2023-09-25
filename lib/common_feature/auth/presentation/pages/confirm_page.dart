import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/common_feature/auth/presentation/pages/signup_page.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfirmPage extends HookConsumerWidget {
  ConfirmPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPass = useState('');
    final user = ref.watch(authProvider).asData!.value;
    return MainScaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${user!.email}に確認コードを送信しました',
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '確認コード',
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onSaved: (newValue) => confirmPass.value = newValue!,
                    validator: (value) => value!.isEmpty ? '入力してください' : null,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  await ref.read(authProvider.notifier).activate(
                      email: user.email!, confirmPass: confirmPass.value);
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: Text(
                '送信',
                style: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                // TODO: 再送信するようにする
              },
              child: Text(
                '確認コードを再送信する',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
              },
              child: Text(
                'アカウントをすでにお持ちの方はこちら',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              child: Text(
                'アカウントをお持ちでない方はこちら',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
