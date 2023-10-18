import 'package:badminist_app/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: theme.colorScheme.copyWith(
            primary: const Color(0xFF393E46),
            onPrimary: const Color(0xFFEEEEEE),
            secondary: const Color(0xFF00ADB5),
            onSecondary: const Color(0xFFEEEEEE),
            background: const Color(0xFFEEEEEE),
            onBackground: const Color(0xFFFFFFFF),
            error: const Color(0xFFFF2C91),
            onError: const Color(0xFFEEEEEE),
            outline: const Color(0xFFEEEEEE),
          ),
          primarySwatch: Colors.blue,
        ),
        home: const App(),
      ),
    );
  }
}
