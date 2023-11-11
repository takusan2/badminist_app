import 'package:badminist_app/feature/community/application/player_list_notifier.dart';
import 'package:badminist_app/utils/exception/validator_exception.dart';
import 'package:badminist_app/utils/formatter/formatter.dart';
import 'package:badminist_app/utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class AddPlayerDialog extends HookConsumerWidget {
  AddPlayerDialog({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useState<String>('');
    final level = useState<PlayerLevel>(PlayerLevel.beginner);
    final numGames = useState<int>(0);
    final age = useState<int>(20);
    final gender = useState<PlayerGender>(PlayerGender.male);
    final status = useState<PlayerStatus>(PlayerStatus.absence);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                initialValue: name.value,
                onSaved: (newValue) => name.value = newValue!,
                decoration: InputDecoration(
                  labelText: '名前',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onBackground,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  return switch (Validator.validateEmail(value)) {
                    ValidatorException.isEmpty => '入力してください',
                    _ => null
                  };
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton(
                    value: level.value,
                    onChanged: (value) {
                      level.value = value!;
                    },
                    iconEnabledColor: Theme.of(context).colorScheme.primary,
                    selectedItemBuilder: (context) {
                      return PlayerLevel.values.map((e) {
                        return Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            child: Text(
                              Formatter.playerLevelToJp(e),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        );
                      }).toList();
                    },
                    items: [
                      DropdownMenuItem(
                        value: PlayerLevel.beginner,
                        child: Text(
                            Formatter.playerLevelToJp(PlayerLevel.beginner)),
                      ),
                      DropdownMenuItem(
                        value: PlayerLevel.intermediate,
                        child: Text(Formatter.playerLevelToJp(
                            PlayerLevel.intermediate)),
                      ),
                      DropdownMenuItem(
                        value: PlayerLevel.advanced,
                        child: Text(
                            Formatter.playerLevelToJp(PlayerLevel.advanced)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        await ref
                            .read(playerListNotifierProvider.notifier)
                            .addPlayer(
                              name: name.value,
                              age: age.value,
                              gender: gender.value,
                              level: level.value,
                              numGames: numGames.value,
                              status: status.value,
                            )
                            .then(
                              (_) => Navigator.pop(context),
                            );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    child: const Text(
                      '追加',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.background,
                    ),
                    child: Text(
                      'キャンセル',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
