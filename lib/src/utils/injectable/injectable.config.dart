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
import '../../features/authentication/presentation/sign_in/bloc/sign_in_bloc.dart'
    as _i7;
import '../../features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart'
    as _i8;
import '../../features/jobs/core/apis/jobs_api_manager.dart' as _i6;
import '../../features/jobs/core/repository/jobs_repository.dart' as _i9;
import '../../features/jobs/core/repository/jobs_repository_impl.dart' as _i10;
import '../../features/jobs/presentation/home/bloc/home_bloc.dart' as _i12;
import '../../features/jobs/presentation/jobs/bloc/jobs_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthApiManager>(() => _i3.AuthApiManager.create());
  gh.lazySingleton<_i4.AuthRepository>(
      () => _i5.AuthRepositoryImpl(get<_i3.AuthApiManager>()),
      instanceName: 'default');
  gh.lazySingleton<_i6.JobsApiManager>(() => _i6.JobsApiManager.create());
  gh.factory<_i7.SignInBloc>(
      () => _i7.SignInBloc(get<_i4.AuthRepository>(instanceName: 'default')));
  gh.factory<_i8.SignUpBloc>(
      () => _i8.SignUpBloc(get<_i4.AuthRepository>(instanceName: 'default')));
  gh.lazySingleton<_i9.JobRepository>(
      () => _i10.JobRepositoryImpl(get<_i6.JobsApiManager>()),
      instanceName: 'default');
  gh.factory<_i11.JobsBloc>(
      () => _i11.JobsBloc(get<_i9.JobRepository>(instanceName: 'default')));
  gh.factory<_i12.HomeBloc>(
      () => _i12.HomeBloc(get<_i9.JobRepository>(instanceName: 'default')));
  return get;
}
