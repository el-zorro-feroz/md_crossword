import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:md_crossword/src/library/library.dart';
import 'package:md_crossword/src/presentation/widgets/sliver_nav_panel.dart';

class StageThreePage extends StatelessWidget {
  const StageThreePage({super.key});

  static const path = '/stage/3';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverNavPanel(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 128.0,
                vertical: 32.0,
              ),
              child: MarkdownBody(
                data: stage3Data,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 128.0,
                vertical: 32.0,
              ),
              child: MarkdownBody(
                data: stage3Data2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
