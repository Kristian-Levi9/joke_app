import 'package:joke_app/data/models/joke_type.dart';
import 'package:joke_app/domain/entities/joke.dart';

class JokeFormatter {
  static String displayText(Joke joke) {
    if (joke.type == JokeType.single.name) {
      return joke.joke ?? '';
    } else if (joke.type == JokeType.twoPart.name) {
      return '${joke.setup ?? ''}\n${joke.delivery ?? ''}';
    } else {
      return 'Unknown joke type';
    }
  }
}
