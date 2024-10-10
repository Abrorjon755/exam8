import 'package:flutter/material.dart';

import '../dependency/app_dependencies.dart';

class MyAppScope extends StatefulWidget {
  const MyAppScope({
    super.key,
    required this.dependencies,
    required this.child,
  });

  final AppDependencies dependencies;
  final Widget child;

  @override
  State<MyAppScope> createState() => MyAppScopeState();
}

class MyAppScopeState extends State<MyAppScope> {
  late final AppDependencies dependencies;

  @override
  void initState() {
    super.initState();
    dependencies = widget.dependencies;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}