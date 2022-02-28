import 'package:di_demo/di/app_component.dart';
import 'package:di_demo/services/counter_service.dart';
import 'package:di_demo/services/storage/counter_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Сервис локатор на провайдере
class AppDependencyConfigurator extends StatelessWidget {
  final Widget child;

  const AppDependencyConfigurator({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AppComponent>(
      create: (context) => AppComponent(),
      child: child,
    );
  }
}
