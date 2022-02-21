import 'package:di_demo/services/counter_service.dart';
import 'package:di_demo/ui/screens/counter/counter_screen.dart';
import 'package:di_demo/ui/screens/counter/counter_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterRoute extends MaterialPageRoute {
  CounterRoute()
      : super(
          builder: (ctx) => Provider<CounterScreenVm>(
            create: createVm,
            child: Builder(
              builder: (context) {
                return CounterScreen(
                  vm: context.read<CounterScreenVm>(),
                );
              }
            ),
          ),
        );
}

CounterScreenVm createVm(BuildContext context) {
  return CounterScreenVm(
    context.read<CounterService>(),
  );
}
