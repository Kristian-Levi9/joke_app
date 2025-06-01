part of 'joke_bloc.dart';

sealed class JokeEvent extends Equatable {
  const JokeEvent();
}

class GetRandomJokeEvent extends JokeEvent {
  const GetRandomJokeEvent();

  @override
  List<Object?> get props => [];
}
