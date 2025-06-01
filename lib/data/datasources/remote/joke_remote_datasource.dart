import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:joke_app/data/models/joke_model.dart';

abstract class JokeRemoteDataSource {
  Future<Either<Exception, JokeModel>> getRandomJoke();
}

@LazySingleton(as: JokeRemoteDataSource)
class JokeRemoteDataSourceImpl implements JokeRemoteDataSource {
  JokeRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<Exception, JokeModel>> getRandomJoke() async {
    try {
      final response = await dio.get('joke/Any');
      if (response.statusCode == 200) {
        final joke = JokeModel.fromJson(response.data);
        return Right(joke);
      } else {
        return Left(
          Exception(
            'Error ${response.statusCode}',
          ),
        );
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }
}
