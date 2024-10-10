import 'package:flutter/material.dart';

import '../dependency/app_dependencies.dart';
import '../l10n/generated/l10n.dart';
import '../widgets/my_app_scope.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  S get lang => S.of(this);

  // Dependencies
  AppDependencies get dependencies =>
      findAncestorStateOfType<MyAppScopeState>()!.dependencies;
}