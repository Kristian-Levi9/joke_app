import 'package:equatable/equatable.dart';

class Joke extends Equatable {
  const Joke({
    required this.setup,
    required this.type,
    required this.delivery,
    required this.joke,
  });

  final String? type;
  final String? setup;
  final String? delivery;
  final String? joke;

  @override
  List<Object?> get props => [type, setup, delivery];
}
