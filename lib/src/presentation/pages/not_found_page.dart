// ignore: avoid_web_libraries_in_flutter
import 'dart:html' show window;

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    var url = window.location.href;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const MarkdownBody(
              data: '# Page Not Found',
            ),
            MarkdownBody(
              data: url,
            ),
          ],
        ),
      ),
    );
  }
}
