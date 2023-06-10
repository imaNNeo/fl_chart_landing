import 'dart:math';

import 'package:f4f_bottom_bar/f4f_bottom_bar.dart';
import 'package:fl_chart_website/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final _charts = [
    ChartItemData(
      'assets/images/line_chart.svg',
      'Line Chart',
      AppData.lineChart,
    ),
    ChartItemData(
      'assets/images/bar_chart.svg',
      'Bar Chart',
      AppData.barChart,
    ),
    ChartItemData(
      'assets/images/pie_chart.svg',
      'Pie Chart',
      AppData.pieChart,
    ),
    ChartItemData(
      'assets/images/scatter_chart.svg',
      'Scatter Chart',
      AppData.scatterChart,
    ),
    ChartItemData(
      'assets/images/radar_chart.svg',
      'Radar Chart',
      AppData.radarChart,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        final chartItemsMargin = width * 0.01;
        final topSpace = width * 0.04;
        return Column(
          children: [
            SizedBox(height: min(topSpace, 28)),
            const Header(),
            SizedBox(height: min(topSpace * 1.5, 24)),
            Text(
              'Highly customizable Flutter chart library',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: min(width * 0.035, 32),
              ),
            ),
            SizedBox(height: min(topSpace * 1.8, 80)),
            Text(
              'Currently supports:',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: max(min(width * 0.015, 32), 18),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _charts
                  .map(
                    (e) => Container(
                      width: min(max(width / (_charts.length * 2), 80), 100),
                      height: min(max(width / (_charts.length * 2), 80), 100),
                      margin: EdgeInsets.symmetric(
                        horizontal: chartItemsMargin,
                      ),
                      child: ChartItem(data: e),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: min(topSpace * 1.8, 80)),
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse(AppData.flChartApp));
              },
              child: const Text(
                "Try it now!",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(child: Container()),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(AppData.flutterWebsite));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/flutterlogo.svg', width: 28,),
                    const SizedBox(width: 8),
                    const Text('Powered by Flutter', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            const F4FBottomBarWidget(
              sections: [
                F4FBottomBarSection(
                  title: 'fl_chart source code',
                  link: AppData.flChartGithub,
                ),
                F4FBottomBarSection(
                  title: 'fl_chart_website source code',
                  link: AppData.flChartWebsiteGithub,
                ),
                F4FBottomBarSection(
                  title: 'Flutter4fun blog',
                  link: AppData.flutter4funBlog,
                ),
                F4FBottomBarSection(
                  title: 'Report an issue',
                  link: AppData.flChartReportIssue,
                ),
                F4FBottomBarSection(
                  title: 'Contribute!',
                  link: AppData.flChartContributing,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}

class ChartItemData {
  final String assetImage;
  final String name;
  final String link;

  ChartItemData(this.assetImage, this.name, this.link);
}

class ChartItem extends StatefulWidget {
  final ChartItemData data;

  const ChartItem({Key? key, required this.data}) : super(key: key);

  @override
  State<ChartItem> createState() => _ChartItemState();
}

class _ChartItemState extends State<ChartItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse(widget.data.link));
            },
            child: MouseRegion(
              onEnter: (event) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovered = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isHovered
                      ? AppColors.primaryDark
                      : AppColors.primaryDark.withOpacity(0.4),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      widget.data.assetImage,
                      width: width * 0.6,
                      height: height * 0.6,
                      color: isHovered ? AppColors.secondary : Colors.white,
                    ),
                    Text(
                      widget.data.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 60,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(AppData.flChartWebsite));
                  },
                  child: Image.asset('assets/images/header_logo.png'),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse(AppData.flChartGithub));
              },
              icon: Image.asset('assets/images/github.png'),
            ),
          )
        ],
      ),
    );
  }
}

// class Footer extends StatelessWidget {
//   const Footer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       color: AppColors.primaryDark,
//       child: Row(
//         children: [
//           Text('asdf', style: TextStyle(color: ),),
//         ],
//       ),
//     );
//   }
// }
