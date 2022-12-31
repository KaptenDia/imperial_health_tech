import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';
import 'package:pramudia_healthtech_interview/widgets/date_card.dart';
import 'package:pramudia_healthtech_interview/widgets/doctor_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 28,
          top: 25,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Schedule',
                  style: primaryTextStyle.copyWith(
                    fontSize: 27,
                    fontWeight: bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 28,
                  ),
                  child: Image.asset(
                    'assets/date.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DateCard(
                    date: '12',
                    dateDescribe: 'Tue',
                    backgroundColor: blueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: whiteColor,
                    dateDescribeColor: whiteColor,
                  ),
                  DateCard(
                    date: '13',
                    dateDescribe: 'Wed',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                  DateCard(
                    date: '14',
                    dateDescribe: 'Thu',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                  DateCard(
                    date: '15',
                    dateDescribe: 'Fri',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                  DateCard(
                    date: '16',
                    dateDescribe: 'Sat',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                  DateCard(
                    date: '17',
                    dateDescribe: 'Sun',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                  DateCard(
                    date: '18',
                    dateDescribe: 'Mon',
                    backgroundColor: lightBlueColor,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    dateColor: blackColor,
                    dateDescribeColor: blackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          left: 28,
          right: 28,
          top: 24,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  '12:00 PM',
                  style: primaryTextStyle.copyWith(
                    color: Color(
                      0xff7D96B5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Dash(
                  direction: Axis.horizontal,
                  length: 273,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            DoctorCard(
              cardbackgroundColor: blueColor,
              time: '12:30 PM',
              doctorName: 'Dr. Zim Akhter',
              timeColor: lightBlueColor,
              doctorNameColor: whiteColor,
              spesialisColor: whiteColor,
              imageUrl: 'assets/doctor1.png',
              spesialisName: 'Cardiologist',
              moreColor: whiteColor,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  '11:00 PM',
                  style: primaryTextStyle.copyWith(
                    color: Color(
                      0xff7D96B5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Dash(
                  direction: Axis.horizontal,
                  length: 273,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            DoctorCard(
              cardbackgroundColor: Color(0xffF1E6EA),
              time: '11:30 PM',
              doctorName: 'Dr. Shahin Alam',
              timeColor: blackColor,
              doctorNameColor: blackColor,
              spesialisColor: blackColor,
              imageUrl: 'assets/doctor2.png',
              spesialisName: 'Cardiologist',
              moreColor: blackColor,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  '11:00 PM',
                  style: primaryTextStyle.copyWith(
                    color: Color(
                      0xff7D96B5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Dash(
                  direction: Axis.horizontal,
                  length: 273,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            DoctorCard(
              cardbackgroundColor: Color(0xffFAF0DB),
              time: '10:30 PM',
              doctorName: 'Dr. Mim Akhter',
              timeColor: blackColor,
              doctorNameColor: blackColor,
              spesialisColor: blackColor,
              imageUrl: 'assets/doctor3.png',
              spesialisName: 'Cardiologist',
              moreColor: blackColor,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        content(),
      ],
    );
  }
}
