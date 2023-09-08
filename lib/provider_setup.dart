import 'package:flutter/cupertino.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'common/dependency_locator.dart';

List<SingleChildWidget> appStateProviders = [
  ChangeNotifierProvider.value(value: getIt<AppNotifier>()),
];
