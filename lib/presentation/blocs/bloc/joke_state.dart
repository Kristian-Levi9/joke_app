part of 'joke_bloc.dart';

sealed class JokeState extends Equatable {
  const JokeState();
}

class JokeLoading extends JokeState {
  @override
  List<Object?> get props => [];
}

class JokeSucceeded extends JokeState {
  const JokeSucceeded(this.joke);

  final Joke joke;
  @override
  List<Object?> get props => [joke];
}

class JokeFailed extends JokeState {
  @override
  List<Object?> get props => [];
}
