import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:joke_app/core/injection%20container/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => getIt.init();

@module
abstract class RegisterModule {
  @Named('BaseUrl')
  String get baseUrl => 'https://v2.jokeapi.dev/';

  @LazySingleton()
  Dio dio(@Named('BaseUrl') String baseUrl) {
    return Dio(
      BaseOptions(baseUrl: baseUrl),
    );
  }
}
