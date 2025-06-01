import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:joke_app/data/datasources/remote/joke_remote_datasource.dart';
import 'package:joke_app/data/models/joke_model.dart';
import 'package:joke_app/domain/repository/joke_repository.dart';

@LazySingleton(as: JokeRepository)
class JokeRepositoryImpl implements JokeRepository {
  JokeRepositoryImpl(this.remoteDataSource);
  final JokeRemoteDataSource remoteDataSource;
  @override
  Future<Either<Exception, JokeModel>> getRandomJoke() {
    return remoteDataSource.getRandomJoke();
  }
}
