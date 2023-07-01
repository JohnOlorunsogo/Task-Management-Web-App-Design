import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_webapp_ui_design/widget/custom_rail_icon.dart';

class CustomNavigationRail extends StatefulWidget {
  const CustomNavigationRail({
    super.key,
    required this.size,
    required this.pageController,
  });

  final Size size;
  final pageController;

  @override
  State<CustomNavigationRail> createState() => _CustomNavigationRailState();
}

class _CustomNavigationRailState extends State<CustomNavigationRail> {
  SelectedRail selectedRail = SelectedRail.dashboard;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.065,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color(0xFFFBFAFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: widget.size.width * 0.032,
              ),
              Text(
                'OCTOM.',
                style: GoogleFonts.dmSans(
                  color: const Color(0xFF23235F),
                  fontSize: widget.size.width * 0.01,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const Spacer(),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'dashboard',
            icon: 'assets/dashboard.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.dashboard;
              });
              widget.pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'timeline',
            icon: 'assets/timeline.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.timeline;
              });
              widget.pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'task',
            icon: 'assets/task.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.task;
              });
              widget.pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'setting',
            icon: 'assets/setting.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.setting;
              });
              widget.pageController.animateToPage(
                3,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'messages',
            icon: 'assets/messages.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.messages;
              });
              widget.pageController.animateToPage(
                4,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomRailIcon(
            selectedRail: selectedRail,
            name: 'files',
            icon: 'assets/files.svg',
            onTap: () {
              setState(() {
                selectedRail = SelectedRail.files;
              });
              widget.pageController.animateToPage(
                5,
                duration: const Duration(milliseconds: 500),
                curve: Curves.elasticOut,
              );
            },
          ),
          const Spacer()
        ],
      ),
    );
  }
}
