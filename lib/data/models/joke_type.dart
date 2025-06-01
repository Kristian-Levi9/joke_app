enum JokeType { single, twoPart }

extension JokeTypeExtension on JokeType {
  String get name {
    switch (this) {
      case JokeType.single:
        return 'single';
      case JokeType.twoPart:
        return 'twopart';
    }
  }
}
