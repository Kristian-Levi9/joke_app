import 'package:fpdart/fpdart.dart';
import 'package:joke_app/data/models/joke_model.dart';

abstract class JokeRepository {
  Future<Either<Exception, JokeModel>> getRandomJoke();
}
