import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:md_crossword/src/library/library.dart';
import 'package:md_crossword/src/presentation/widgets/sliver_nav_panel.dart';

class StageOnePage extends StatelessWidget {
  const StageOnePage({super.key});

  static const path = '/stage/1';

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
                data: stage1Data,
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
                data: stage1Data2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
