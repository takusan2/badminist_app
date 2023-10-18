import 'package:badminist_app/common_feature/auth/application/auth_notifier.dart';
import 'package:badminist_app/common_feature/auth/presentation/pages/signup_page.dart';
import 'package:badminist_app/common_feature/auth/presentation/widgets/center_child_scroll_view.dart';
import 'package:badminist_app/utils/exception/validator_exception.dart';
import 'package:badminist_app/utils/validator/validator.dart';
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
    final errorMessage = useState('');
    return MainScaffold(
      body: CenterChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                      onSaved: (newValue) => email.value = newValue!,
                      validator: (value) =>
                          switch (Validator.validateEmail(value)) {
                        ValidatorException.isEmpty => '入力してください',
                        ValidatorException.inValidEmail =>
                          '正しいメールアドレスを入力してください',
                        _ => null
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      onSaved: (newValue) => password.value = newValue!,
                      validator: (value) => switch (
                          Validator.validateEmail(value)) {
                        ValidatorException.isEmpty => '入力してください',
                        _ => null
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
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
                        .login(email.value, password.value)
                        .onError<Exception>((error, stackTrace) {
                      errorMessage.value = error.toString();
                    });
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
                ),
              ),
              const SizedBox(height: 30),
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
      ),
    );
  }
}
