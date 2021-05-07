import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:useless_app/domain/useless_entity.dart';
import 'package:useless_app/domain/useless_repo.dart';

@LazySingleton(as: UselessRepository)
class ImplementUselessRepository extends UselessRepository {
  @override
  UselessEntity uselessFunction(bool state) {
    final _random = Random();
    int _red = _random.nextInt(256);
    int _green = _random.nextInt(256);
    int _blue = _random.nextInt(256);
    return UselessEntity(state, _red, _green, _blue);
  }
}
