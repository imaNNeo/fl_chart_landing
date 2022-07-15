import 'package:fl_chart_website/consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: const [
          Header(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            launchUrl(Uri.parse(AppData.flChartWebsite));
          },
          child: Image.asset(
            'assets/images/header_logo.png',
            height: 28,
          ),
        ),
      ),
      shape: const Border(
        bottom: BorderSide(
          color: AppColors.primaryDark,
          width: 1,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(AppData.flChartGithub));
          },
          icon: Image.asset('assets/images/github.png'),
        ),
      ],
    );
  }
}
