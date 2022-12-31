import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';
import 'package:pramudia_healthtech_interview/widgets/notif_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 25,
            left: 28,
            right: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Notifications',
                style: primaryTextStyle.copyWith(
                  fontSize: 27,
                  fontWeight: bold,
                ),
              ),
              NotifCard(
                title: '3 Schedules!',
                description: 'Check your schedule Today',
                image: 'assets/notif1.png',
              ),
              NotifCard(
                title: '14 Messages',
                description: 'Check your schedule Today',
                image: 'assets/notif2.png',
              ),
              NotifCard(
                title: 'Medicine',
                description: 'Check your schedule Today',
                image: 'assets/notif3.png',
              ),
              NotifCard(
                title: 'Vaccine Update',
                description: 'Check your schedule Today',
                image: 'assets/notif4.png',
              ),
              NotifCard(
                title: 'App Update',
                description: 'Check your schedule Today',
                image: 'assets/notif5.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
