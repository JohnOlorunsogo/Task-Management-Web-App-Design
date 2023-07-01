import 'package:flutter/material.dart';
import 'package:task_management_webapp_ui_design/pages/dashboard.dart';
import 'package:task_management_webapp_ui_design/pages/files.dart';
import 'package:task_management_webapp_ui_design/pages/messages.dart';
import 'package:task_management_webapp_ui_design/pages/setting.dart';
import 'package:task_management_webapp_ui_design/pages/task.dart';
import 'package:task_management_webapp_ui_design/pages/timeline.dart';
import 'package:task_management_webapp_ui_design/widget/custom_navigation_rail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      body: Row(
        children: [
          CustomNavigationRail(
            size: size,
            pageController: pageController,
          ),
          SizedBox(
            height: size.height,
            width: size.width * 0.935,
            child: PageView(
              // clipBehavior: Clip.none,
              padEnds: true,
              physics: const NeverScrollableScrollPhysics(),
              allowImplicitScrolling: false,
              scrollDirection: Axis.vertical,
              controller: pageController,
              children: const [
                DashboardPage(),
                TimelinePage(),
                TaskPage(),
                SettingPage(),
                MessagesPage(),
                FilesPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
