import 'package:provider/provider.dart';
import 'package:useless_app/application/useless_provider.dart';
import 'package:useless_app/injection.dart';

final List providers = [
  ChangeNotifierProvider<UselessProvider>(
    create: (context) => getIt<UselessProvider>(),
    lazy: false,
  )
];
