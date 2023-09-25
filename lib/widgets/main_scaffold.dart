import 'package:badminist_app/constant/constant.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    required this.body,
    this.appBarTitle,
    this.appBarActions,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
  });

  final Widget body;
  final String? appBarTitle;
  final List<Widget>? appBarActions;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle ?? Constant.title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 24,
          ),
        ),
        actions: appBarActions,
        centerTitle: true,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
