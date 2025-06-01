import 'package:joke_app/domain/entities/joke.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_model.g.dart';

@JsonSerializable(createToJson: false)
class JokeModel extends Joke {
  const JokeModel({super.type, super.joke, super.setup, super.delivery});

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}
