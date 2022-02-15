import 'package:di_demo/domain/counter.dart';
import 'package:di_demo/services/counter_service.dart';
import 'package:flutter/material.dart';

class CounterScreenVm extends ChangeNotifier{

  final CounterService _service;
  late Counter counter = _service.getInitialCount();

  CounterScreenVm(this._service);

  void inc() {
    counter = _service.inc(counter);

    notifyListeners();
  }
}