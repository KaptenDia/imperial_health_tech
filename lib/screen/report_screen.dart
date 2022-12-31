import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Report',
              style: primaryTextStyle.copyWith(
                fontSize: 27,
                fontWeight: bold,
              ),
            ),
            Image.asset(
              'assets/more.png',
              color: blackColor,
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  24,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/report_card1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 173,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/report_card2.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 173,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/report_card3.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget latestReport() {
      return Container(
        margin: EdgeInsets.only(
          top: 27,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Report',
              style: primaryTextStyle.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 93,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(
                      color: Color(0xffD7DDEA),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(
                      28,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffD7DDEA),
                        blurRadius: 50,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 15,
                        ),
                      ),
                      Image.asset(
                        'assets/report1.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'General Health',
                              style: primaryTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '8 files',
                              style: primaryTextStyle.copyWith(
                                fontWeight: regular,
                                color: Color(0xff4A545E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 17,
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/more-vertical.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 93,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD7DDEA),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(
                      28,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 15,
                        ),
                      ),
                      Image.asset(
                        'assets/report2.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'General Health',
                              style: primaryTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '8 files',
                              style: primaryTextStyle.copyWith(
                                fontWeight: regular,
                                color: Color(0xff4A545E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 17,
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/more-vertical.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 28,
      ),
      child: ListView(
        children: [
          header(),
          content(),
          latestReport(),
        ],
      ),
    );
  }
}
