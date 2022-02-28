import 'package:di_demo/services/counter_service.dart';
import 'package:di_demo/services/storage/counter_storage.dart';

/// Хранит все глобальные зависимости
class AppComponent {
  final counterStorage = CounterStorage();
  late final counterService = CounterService(counterStorage);
}
