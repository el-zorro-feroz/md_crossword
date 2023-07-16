import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:md_crossword/src/library/library.dart';
import 'package:md_crossword/src/presentation/widgets/sliver_nav_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverNavPanel(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 256.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/home_page_avatar.jpg',
                      height: MediaQuery.of(context).size.height / 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 32.0,
                  ),
                  const Expanded(
                    flex: 2,
                    child: MarkdownBody(
                      data: homePageData,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
