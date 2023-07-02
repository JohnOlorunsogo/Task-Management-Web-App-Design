import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        //search bar section
        Container(
          width: double.maxFinite,
          height: size.width * 0.053,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Spacer(),
              Container(
                width: size.width * 0.2,
                height: size.width * 0.031,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F7FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(size.width * 0.005),
                  ),
                ),
                child: TextField(
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.011,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.width * 0.005),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: size.width * 0.014,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        // vertical: size.width * 0.035,
                      ),
                      hintText: 'Search anything...',
                      hintStyle: GoogleFonts.dmSans(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.011,
                      )),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(10),
                    splashRadius: 0.1,
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      size: size.width * 0.017,
                    ),
                  ),
                  Container(
                    width: size.width * 0.03,
                    height: size.width * 0.03,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFE6E6FF),
                      shape: OvalBorder(),
                    ),
                    child: Image.asset('assets/user.png'),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(10),
                    splashRadius: 0.1,
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: size.width * 0.017,
                      color: const Color(0xff5250F9),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //main section
            SizedBox(
              // width: size.width * 0.66,
              child: Column(
                children: [
                  //summary cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.19,
                        height: size.width * 0.145,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.011),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.19,
                        height: size.width * 0.145,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.011),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.19,
                        height: size.width * 0.145,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.011),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //schedule section
            Container(
              width: size.width * 0.275,
              height: size.height - (size.width * 0.053),
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.025,
                  vertical: size.width * 0.015,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today’s Scheudle',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF232360),
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.0139,
                          ),
                        ),
                        // SizedBox(width: size.width * 0.0458),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.01,
                            vertical: size.width * 0.008,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(
                              size.width * 0.02,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.grid_view_rounded,
                                size: size.width * 0.017,
                                color: const Color(0xffC8CCD7),
                              ),
                              SizedBox(width: size.width * 0.012),
                              Icon(
                                Icons.calendar_month_outlined,
                                size: size.width * 0.017,
                                color: const Color(0xff768396),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.width * 0.02),
                    Row(
                      children: [
                        Text(
                          '30 minute call with Client',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF1EA7FF),
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.008,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                            maximumSize: Size(
                              size.width * 0.04,
                              size.width * 0.01,
                            ),
                            minimumSize: Size(
                              size.width * 0.04,
                              size.width * 0.01,
                            ),
                            fixedSize: Size(
                              size.width * 0.04,
                              size.width * 0.01,
                            ),
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: Text(
                            '+ invite',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xFF1EA7FF),
                              fontWeight: FontWeight.w500,
                              fontSize: size.width * 0.009,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Project Discovery Call',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF232360),
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.0125,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.width * 0.024),
                    Container(
                        width: double.maxFinite,
                        height: size.width * 0.047,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF5051F9),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.007),
                          ),
                          shadows: [
                            BoxShadow(
                              color: const Color(0x3D4F50F9),
                              blurRadius: size.width * 0.014,
                              offset: Offset(0, size.width * 0.006),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          children: [],
                        )),
                    SizedBox(height: size.width * 0.01),
                    const Divider(color: Color(0xFFE6E6FF)),
                    SizedBox(height: size.width * 0.01),
                    Row(
                      children: [
                        Text(
                          "Messages",
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF232360),
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.0139,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
