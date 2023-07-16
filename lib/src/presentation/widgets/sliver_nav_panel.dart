import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:md_crossword/src/presentation/pages/home_page.dart';
import 'package:md_crossword/src/presentation/pages/pre_stage_page.dart';
import 'package:md_crossword/src/presentation/pages/reflect_page.dart';
import 'package:md_crossword/src/presentation/pages/rules_page.dart';
import 'package:md_crossword/src/presentation/pages/stage_one_page.dart';
import 'package:md_crossword/src/presentation/pages/stage_three_page.dart';
import 'package:md_crossword/src/presentation/pages/stage_two_page.dart';

class SliverNavPanel extends StatelessWidget {
  const SliverNavPanel({super.key});

  @override
  Widget build(BuildContext context) {
    void navToPage(String page) {
      // Navigator.of(context).pushReplacementNamed(page);
      urlStrategy?.pushState(null, page, page);
      urlStrategy?.go(0);
    }

    return SliverAppBar.large(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).primaryColor,
      title: const MarkdownBody(
        data: '# Да здравствует кроссворд!',
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Главная',
            onTapText: () => navToPage(HomePage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Положение',
            onTapText: () => navToPage(RulesPage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Подготовительный этап',
            onTapText: () => navToPage(PreStagePage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Этап 1',
            onTapText: () => navToPage(StageOnePage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Этап 2',
            onTapText: () => navToPage(StageTwoPage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Этап 3',
            onTapText: () => navToPage(StageThreePage.path),
            selectable: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MarkdownBody(
            data: 'Рефлексия',
            onTapText: () => navToPage(ReflectPage.path),
            selectable: true,
          ),
        ),
        // TextButton(
        //   onPressed: () => print('object'),
        //   child: const Text(
        //     'data',
        //   ),
        // ),
      ],
    );
  }
}
