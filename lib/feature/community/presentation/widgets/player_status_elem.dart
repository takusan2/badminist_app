import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class PlayerStatusElem extends ConsumerWidget {
  const PlayerStatusElem({
    super.key,
    required this.status,
    required this.onPressed,
  });

  final PlayerStatus status;
  final void Function()? onPressed;

  Icon statusIcon(PlayerStatus status) {
    return switch (status) {
      PlayerStatus.attend => const Icon(
          Icons.check_box_outlined,
          size: 20,
          color: Colors.black,
        ),
      PlayerStatus.break_ => const Icon(
          Icons.free_breakfast_outlined,
          size: 15,
          color: Colors.black,
        ),
      _ => const Icon(
          Icons.check_box_outline_blank,
          size: 20,
          color: Colors.black,
        ),
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Center(
        child: IconButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
          ),
          onPressed: onPressed,
          icon: statusIcon(status),
        ),
      ),
    );
  }
}
