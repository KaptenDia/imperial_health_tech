import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';
import 'package:pramudia_healthtech_interview/widgets/date_card.dart';

class DateDoctorCard extends StatelessWidget {
  const DateDoctorCard({
    super.key,
    required this.date,
    required this.dateDescribe,
    required this.backgroundColor,
    required this.cardbackgroundColor,
    required this.time,
    required this.doctorName,
    required this.timeColor,
    required this.doctorNameColor,
    required this.spesialisColor,
  });

  final String date;
  final String doctorName;
  final String dateDescribe;
  final String time;
  final Color timeColor;
  final Color doctorNameColor;
  final Color backgroundColor;
  final Color cardbackgroundColor;
  final Color spesialisColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 120,
      decoration: BoxDecoration(
        color: cardbackgroundColor,
        borderRadius: BorderRadius.circular(
          28,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 20,
        ),
        child: Row(
          children: [
            DateCard(
              date: date,
              dateDescribe: dateDescribe,
              backgroundColor: backgroundColor,
              margin: EdgeInsets.only(),
              dateColor: whiteColor,
              dateDescribeColor: whiteColor,
            ),
            const SizedBox(
              width: 17,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: primaryTextStyle.copyWith(
                      fontWeight: regular,
                      color: timeColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    doctorName,
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 19,
                      color: doctorNameColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Depression',
                    style: primaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 15,
                      color: spesialisColor.withOpacity(0.65),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage(
                    'assets/more.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
