// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/useless_provider.dart' as _i5;
import 'domain/useless_repo.dart' as _i3;
import 'infrastructure/imp_useless_repo.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.UselessRepository>(
      () => _i4.ImplementUselessRepository());
  gh.factory<_i5.UselessProvider>(
      () => _i5.UselessProvider(get<_i3.UselessRepository>()));
  return get;
}
