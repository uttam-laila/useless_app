import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:useless_app/domain/useless_entity.dart';
import 'package:useless_app/domain/useless_repo.dart';

@injectable
class UselessProvider with ChangeNotifier {
  final UselessRepository _repo;
  UselessProvider(this._repo);

  UselessEntity uselessEntity = UselessEntity(false, 100, 100, 100);

  Future uselessFunction(bool state) async {
    uselessEntity = _repo.uselessFunction(state);
    notifyListeners();
  }
}
