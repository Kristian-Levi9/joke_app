// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:joke_app/core/injection%20container/injection_container.dart'
    as _i866;
import 'package:joke_app/data/datasources/remote/joke_remote_datasource.dart'
    as _i554;
import 'package:joke_app/data/repository_impl/joke_repository_impl.dart'
    as _i1034;
import 'package:joke_app/domain/repository/joke_repository.dart' as _i692;
import 'package:joke_app/presentation/blocs/bloc/joke_bloc.dart' as _i952;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i361.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.lazySingleton<_i554.JokeRemoteDataSource>(
        () => _i554.JokeRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
    gh.lazySingleton<_i692.JokeRepository>(
        () => _i1034.JokeRepositoryImpl(gh<_i554.JokeRemoteDataSource>()));
    gh.lazySingleton<_i952.JokeBloc>(
        () => _i952.JokeBloc(gh<_i692.JokeRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i866.RegisterModule {}
