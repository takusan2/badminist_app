import 'package:badminist_app/feature/match/application/match_notifier.dart';
import 'package:badminist_app/feature/match/presentation/pages/matching_result_page.dart';
import 'package:badminist_app/utils/exception/validator_exception.dart';
import 'package:badminist_app/utils/formatter/formatter.dart';
import 'package:badminist_app/utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class MatchingConfigDialog extends HookConsumerWidget {
  MatchingConfigDialog({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorMessage = useState<String>('');
    final numCourts = useState<int>(1);
    final rule = useState<Rule>(Rule.singles);
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
                initialValue: numCourts.value.toString(),
                onSaved: (newValue) => numCourts.value = int.parse(newValue!),
                decoration: InputDecoration(
                  labelText: 'コート数',
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
                  return switch (Validator.isNaturalNumber(value)) {
                    ValidatorException.isEmpty => '入力してください',
                    ValidatorException.isNotInteger => '数値を入力してください',
                    ValidatorException.isNotNaturalNumber => '正の整数を入力してください',
                    _ => null
                  };
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: Rule.singles,
                        groupValue: rule.value,
                        onChanged: (value) {
                          rule.value = value as Rule;
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        Formatter.matchRuleToJp(Rule.singles),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Radio(
                        value: Rule.doubles,
                        groupValue: rule.value,
                        onChanged: (value) {
                          rule.value = value as Rule;
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        Formatter.matchRuleToJp(Rule.doubles),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                errorMessage.value,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        errorMessage.value = '';
                        await ref
                            .read(matchNotifierProvider.notifier)
                            .generateMatch(numCourts.value, rule.value)
                            .onError(
                              (error, stackTrace) =>
                                  errorMessage.value = error.toString(),
                            )
                            .then((value) {
                          if (errorMessage.value.isEmpty) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MatchingResultPage(
                                  numCourts: numCourts.value,
                                  rule: rule.value,
                                ),
                              ),
                            );
                          }
                        });
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    child: const Text(
                      '確定',
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
