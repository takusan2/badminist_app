import 'package:badminist_app/constant/constant.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncContainer<T> extends StatelessWidget {
  const AsyncContainer({
    required this.asyncValue,
    required this.builder,
    this.loading,
    this.error,
    super.key,
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(BuildContext, T) builder;
  final Widget? loading;
  final Widget Function(Object, StackTrace)? error;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) => builder(context, data),
      loading: () =>
          loading ?? const Center(child: CircularProgressIndicator()),
      error: (e, stacktrace) {
        return error?.call(e, stacktrace) ??
            const Scaffold(body: Text(Constant.error));
      },
    );
  }
}
