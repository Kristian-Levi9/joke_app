import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_app/core/helpers/joke_displaying_text_helper.dart';
import 'package:joke_app/core/injection%20container/injection_container.dart';
import 'package:joke_app/core/themes/theme.dart';
import 'package:joke_app/presentation/blocs/bloc/joke_bloc.dart';
import 'package:joke_app/presentation/widgets/joke_button_widget.dart';
import 'package:joke_app/presentation/widgets/joke_text_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _bloc = getIt<JokeBloc>();

  @override
  void initState() {
    _bloc.add(GetRandomJokeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Laugh Spectrum'),
        ),
        body: BlocBuilder(
          builder: (_, JokeState state) {
            return switch (state) {
              JokeLoading() => const Center(child: CircularProgressIndicator()),
              JokeSucceeded() => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      JokeTextWidget(
                        text: JokeFormatter.displayText(state.joke),
                      ),
                      const SizedBox(height: 20),
                      JokeButtonWidget(
                        onPressed: () => _bloc.add(GetRandomJokeEvent()),
                        text: 'Get Random Joke',
                      ),
                    ],
                  ),
                ),
              JokeFailed() => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Failed to load joke, check your connection!'),
                      const SizedBox(height: 20),
                      JokeButtonWidget(
                        onPressed: () => _bloc.add(
                          GetRandomJokeEvent(),
                        ),
                        text: 'Retry',
                      ),
                    ],
                  ),
                ),
            };
          },
          bloc: _bloc,
        ),
      ),
    );
  }
}
