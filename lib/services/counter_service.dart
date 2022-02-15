import 'package:di_demo/domain/counter.dart';
import 'package:di_demo/services/storage/counter_storage.dart';

class CounterService {
  final CounterStorage _storage;

  CounterService(this._storage);

  Counter getInitialCount() {
    return _storage.counter;
  }

  Counter inc(Counter current) {
    final newCount = Counter(current.count + 1);
    _storage.counter = newCount;

    return newCount;
  }

  Counter dec(Counter current) {
     final newCount = Counter(current.count - 1);
    _storage.counter = newCount;

    return newCount;
  }
}