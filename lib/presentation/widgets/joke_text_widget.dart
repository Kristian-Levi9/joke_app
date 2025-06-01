import 'package:flutter/material.dart';

class JokeTextWidget extends StatelessWidget {
  const JokeTextWidget({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(20), child: Text(text));
  }
}
