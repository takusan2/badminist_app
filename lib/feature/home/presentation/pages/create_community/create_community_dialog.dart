import 'package:badminist_app/feature/home/application/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCommunityDialog extends HookConsumerWidget {
  CreateCommunityDialog({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useState<String>('');
    final description = useState<String>('');

    final notifier = ref.read(homeNotifierProvider.notifier);

    return AlertDialog(
      title: const Text('コミュニティを作成'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'コミュニティ名',
              ),
              onSaved: (newValue) => name.value = newValue!,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'コミュニティの説明',
              ),
              onSaved: (newValue) => description.value = newValue!,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              notifier.createCommunity(
                name: name.value,
                description: description.value,
              );
              Navigator.of(context).pop();
            }
          },
          child: const Text('作成'),
        ),
      ],
    );
  }
}
