import 'package:get_it/get_it.dart';
import 'package:local_marketplace/common/core/network/app_interceptor.dart';
import 'package:local_marketplace/common/core/network/index.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<AppNotifier>(() => AppNotifier());
  getIt.registerLazySingleton<NetworkService>(() => NetworkService());
  getIt.registerLazySingleton<AppInterceptor>(() => AppInterceptor());
}
