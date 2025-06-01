import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:joke_app/domain/entities/joke.dart';
import 'package:joke_app/domain/repository/joke_repository.dart';

part 'joke_event.dart';
part 'joke_state.dart';

@LazySingleton()
class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeBloc(this._jokeRepository) : super(JokeLoading()) {
    on<GetRandomJokeEvent>(
      (_, emit) async {
        emit(JokeLoading());

        final either = await _jokeRepository.getRandomJoke();

        emit(
          either.fold(
            (l) => JokeFailed(),
            JokeSucceeded.new,
          ),
        );
      },
      transformer: droppable(),
    );
  }

  final JokeRepository _jokeRepository;
}
