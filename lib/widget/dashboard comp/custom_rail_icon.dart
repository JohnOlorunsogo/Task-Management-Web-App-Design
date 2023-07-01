import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRailIcon extends StatelessWidget {
  CustomRailIcon({
    required this.icon,
    required this.onTap,
    required this.name,
    required this.selectedRail,
    super.key,
  });
  SelectedRail selectedRail;
  final String icon;
  VoidCallback onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(size.width * 0.01),
            onTap: onTap,
            child: Container(
                // margin: EdgeInsets.only(bottom: size.width * 0.02),
                width: size.width * 0.032,
                height: size.width * 0.031,
                decoration: ShapeDecoration(
                  color: selectedRail.name == name
                      ? const Color(0xFF5051F9)
                      : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x1E3D6BE0),
                      blurRadius: 14,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.007,
                    right: size.width * 0.007,
                    top: size.width * 0.007,
                    bottom: size.width * 0.007,
                  ),
                  child: SvgPicture.asset(
                    icon,
                    colorFilter: ColorFilter.mode(
                      selectedRail.name == name ? Colors.white : Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                )),
          ),
        ),
        SizedBox(
          height: size.width * 0.02,
        )
      ],
    );
  }
}

enum SelectedRail { dashboard, timeline, task, setting, messages, files }
