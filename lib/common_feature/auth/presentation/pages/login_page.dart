import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useState('');
    final password = useState('');
    return MainScaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ログイン',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onSaved: (newValue) => email.value = newValue!,
                    validator: (value) => value!.isEmpty ? '入力してください' : null,
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onSaved: (newValue) => password.value = newValue!,
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
                    await ref
                        .read(authProvider.notifier)
                        .login(email.value, password.value);
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  'ログイン',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
