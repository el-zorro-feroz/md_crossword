import 'package:flutter/material.dart';
import 'package:md_crossword/src/presentation/pages/home_page.dart';
import 'package:md_crossword/src/presentation/pages/not_found_page.dart';
import 'package:md_crossword/src/presentation/pages/pre_stage_page.dart';
import 'package:md_crossword/src/presentation/pages/rules_page.dart';

class Crossword extends StatelessWidget {
  const Crossword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        switch (settings.name) {
          case HomePage.path:
            return const HomePage();
          case RulesPage.path:
            return const RulesPage();
          case PreStagePage.path:
            return const PreStagePage();
          default:
            return const NotFoundPage();
        }
      },
    );
  }
}
