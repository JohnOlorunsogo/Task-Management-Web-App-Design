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
            )
          ],
        )
      ],
    );
  }
}
