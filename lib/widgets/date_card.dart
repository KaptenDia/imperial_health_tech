import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';

class DateCard extends StatelessWidget {
  DateCard({
    super.key,
    required this.date,
    required this.dateDescribe,
    required this.backgroundColor,
    required this.margin,
    required this.dateColor,
    required this.dateDescribeColor,
  });
  final String date;
  final String dateDescribe;
  final Color backgroundColor;
  final EdgeInsets margin;
  final Color dateColor;
  final Color dateDescribeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 70,
      height: 85,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          24,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: extraBold,
              color: dateColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            dateDescribe,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: dateDescribeColor,
            ),
          ),
        ],
      ),
    );
  }
}
