import 'package:get_it/get_it.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<AppNotifier>(() => AppNotifier());
}
