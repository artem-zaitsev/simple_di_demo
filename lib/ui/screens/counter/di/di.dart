
import 'package:di_demo/services/counter_service.dart';
import 'package:di_demo/ui/screens/counter/counter_screen.dart';
import 'package:di_demo/ui/screens/counter/counter_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

CounterScreen createScreen(BuildContext context) {
  return CounterScreen(
    vm: CounterScreenVm(
      context.read<CounterService>(),
    ),
  );
}