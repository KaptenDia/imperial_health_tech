import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';
import 'package:pramudia_healthtech_interview/widgets/date_card.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.cardbackgroundColor,
    required this.time,
    required this.doctorName,
    required this.timeColor,
    required this.doctorNameColor,
    required this.spesialisColor,
    required this.imageUrl,
    required this.spesialisName,
    required this.moreColor,
  });
  final String doctorName;
  final String time;
  final Color timeColor;
  final Color doctorNameColor;
  final Color cardbackgroundColor;
  final Color spesialisColor;
  final String imageUrl;
  final String spesialisName;
  final Color moreColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 119,
      decoration: BoxDecoration(
        color: cardbackgroundColor,
        borderRadius: BorderRadius.circular(
          28,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 19,
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 25,
              ),
              width: 224,
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
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    spesialisName,
                    style: primaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 15,
                      color: spesialisColor.withOpacity(0.65),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage(
                    'assets/more.png',
                  ),
                  color: moreColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
