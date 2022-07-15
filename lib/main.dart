import 'package:fl_chart_website/home_page.dart';
import 'package:fl_chart_website/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FL Chart',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.primary,
      ),
      home: const HomePage(),
    );
  }
}
