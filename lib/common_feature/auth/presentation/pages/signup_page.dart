import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/common_feature/auth/presentation/widgets/center_child_scroll_view.dart';
import 'package:badminist_app/utils/exception/validator_exception.dart';
import 'package:badminist_app/utils/validator/validator.dart';
import 'package:badminist_app/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useState('');
    final email = useState('');
    final password = useState('');
    final errorMessage = useState('');
    return MainScaffold(
      body: CenterChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'サインアップ',
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
                        labelText: 'Name',
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onSaved: (newValue) => name.value = newValue!,
                      validator: (value) => switch (
                          Validator.validateEmail(value!)) {
                        ValidatorException.isEmpty => '入力してください',
                        _ => null
                      },
                    ),
                    const SizedBox(height: 30),
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
                      validator: (value) =>
                          switch (Validator.validateEmail(value)) {
                        ValidatorException.isEmpty => '入力してください',
                        ValidatorException.inValidEmail =>
                          '正しいメールアドレスを入力してください',
                        _ => null
                      },
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
                      validator: (value) => switch (
                          Validator.validateEmail(value!)) {
                        ValidatorException.isEmpty => '入力してください',
                        _ => null
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              if (errorMessage.value.isNotEmpty)
                Text(
                  errorMessage.value,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () async {
                  errorMessage.value = '';
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    await ref
                        .read(authProvider.notifier)
                        .temporaryRegistration(
                          name: name.value,
                          email: email.value,
                          password: password.value,
                        )
                        .then((value) => Navigator.of(context).pop())
                        .onError((error, stackTrace) {
                      errorMessage.value = error.toString();
                    });
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  'サインアップ',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'アカウントをすでにお持ちの方はこちら',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
