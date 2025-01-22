import 'package:flutter/material.dart';
import 'package:pagination_assessment/theme.dart';
import 'package:pagination_assessment/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightModeTheme,
      home: const HomeView(),
    );
  }
}
