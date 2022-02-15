import 'package:di_demo/di/service_locator.dart';
import 'package:di_demo/ui/screens/counter/counter_screen.dart';
import 'package:di_demo/ui/screens/counter/counter_vm.dart';
import 'package:flutter/material.dart';

class CounterRoute extends MaterialPageRoute {
  CounterRoute()
      : super(
          builder: (ctx) => CounterScreen(
            vm: createVm(ctx),
          ),
        );
}

CounterScreenVm createVm(BuildContext context) {
  return CounterScreenVm(
    ServiceLocator.instance.counterService,
  );
}
