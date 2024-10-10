import 'package:flutter/material.dart';

import 'src/common/widgets/initialize_app.dart';
import 'src/common/widgets/my_app.dart';
import 'src/common/widgets/my_app_scope.dart';

void main() async {
  final dependencies = await const InitializeApp().initialize();

  runApp(
    MyAppScope(
      dependencies: dependencies,
      child: const MyApp(),
    ),
  );
}