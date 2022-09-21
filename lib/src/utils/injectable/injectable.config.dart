// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/core/api/auth_api_manager.dart' as _i3;
import '../../features/authentication/core/repository/auth_repository.dart'
    as _i4;
import '../../features/authentication/core/repository/auth_repository_impl.dart'
    as _i5;
import '../../features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthApiManager>(() => _i3.AuthApiManager.create());
  gh.lazySingleton<_i4.AuthRepository>(
      () => _i5.AuthRepositoryImpl(get<_i3.AuthApiManager>()),
      instanceName: 'default');
  gh.factory<_i6.SignUpBloc>(
      () => _i6.SignUpBloc(get<_i4.AuthRepository>(instanceName: 'default')));
  return get;
}
