import 'package:di_demo/services/counter_service.dart';
import 'package:di_demo/services/storage/counter_storage.dart';

class ServiceLocator {
  ServiceLocator._();
  static final instance = ServiceLocator._();

  final CounterStorage counterStorage = CounterStorage();
  late final CounterService counterService = CounterService(counterStorage);
}