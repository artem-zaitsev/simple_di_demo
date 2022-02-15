
import 'package:di_demo/di/service_locator.dart';
import 'package:di_demo/ui/screens/counter/counter_screen.dart';
import 'package:di_demo/ui/screens/counter/counter_vm.dart';
import 'package:flutter/material.dart';

CounterScreen createScreen(BuildContext context) {
  return CounterScreen(
    vm: CounterScreenVm(
      ServiceLocator.instance.counterService,
    ),
  );
}