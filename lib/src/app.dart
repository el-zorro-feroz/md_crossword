import 'package:flutter/material.dart';
import 'package:md_crossword/src/presentation/pages/not_found_page.dart';

class Crossword extends StatelessWidget {
  const Crossword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: Colors.lightBlue,
          secondary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) {
        switch (settings) {
          default:
            return const NotFoundPage();
        }
      },
    );
  }
}
