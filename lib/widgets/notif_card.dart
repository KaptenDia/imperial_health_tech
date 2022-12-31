import 'package:flutter/material.dart';

import '../shared/theme.dart';

class NotifCard extends StatelessWidget {
  const NotifCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
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
            image,
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
                  title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  description,
                  style: primaryTextStyle.copyWith(
                    fontWeight: regular,
                    color: Color(0xff4A545E),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
