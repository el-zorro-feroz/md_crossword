import 'package:flutter/material.dart';
import 'package:md_crossword/src/app.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  runApp(const Crossword());
}
