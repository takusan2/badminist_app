import 'package:badminist_app/feature/home/presentation/widgets/flippable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommunityCard extends HookConsumerWidget {
  const CommunityCard({
    super.key,
    required this.name,
    required this.description,
    this.onTapCard,
    this.onDeleteIconPressed,
    this.onEditIconPressed,
  });

  final String name;
  final String description;
  final void Function()? onTapCard;
  final void Function()? onDeleteIconPressed;
  final void Function()? onEditIconPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFlipped = useState(false);
    return GestureDetector(
      onTap: isFlipped.value ? null : onTapCard,
      child: FlippableCard(
        front: Front(
          name: name,
          description: description,
          onPressed: () {
            isFlipped.value = true;
          },
        ),
        back: Back(
          onPressed: () {
            isFlipped.value = false;
          },
          onDeleteIconPressed: onDeleteIconPressed,
          onEditIconPressed: onEditIconPressed,
        ),
        isFlipped: isFlipped.value,
      ),
    );
  }
}

class Back extends StatelessWidget {
  const Back({
    super.key,
    this.onPressed,
    this.onDeleteIconPressed,
    this.onEditIconPressed,
  });

  final void Function()? onPressed;
  final void Function()? onDeleteIconPressed;
  final void Function()? onEditIconPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.close),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onEditIconPressed,
                  icon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 33,
                  ),
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: onDeleteIconPressed,
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.error,
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class Front extends StatelessWidget {
  const Front({
    super.key,
    this.onPressed,
    required this.name,
    required this.description,
  });

  final void Function()? onPressed;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
