import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pramudia_healthtech_interview/cubit/screen_cubit.dart';
import 'package:pramudia_healthtech_interview/screen/home_screen.dart';
import 'package:pramudia_healthtech_interview/screen/notification_screen.dart';
import 'package:pramudia_healthtech_interview/screen/report_screen.dart';
import 'package:pramudia_healthtech_interview/screen/schedule_screen.dart';
import 'package:pramudia_healthtech_interview/widgets/bottom_navigation.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomeScreen();
        case 1:
          return ScheduleScreen();
        case 2:
          return ReportScreen();
        case 3:
          return NotificationScreen();
        default:
          return HomeScreen();
      }
    }

    Widget customBottomNavigation() {
      return Container(
        width: double.infinity,
        height: 48,
        margin: const EdgeInsets.only(
          left: 29,
          right: 29,
          bottom: 17,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BottomNavigation(
              icon: 'assets/home.png',
              index: 0,
              name: 'Home',
            ),
            BottomNavigation(
              icon: 'assets/schedule.png',
              index: 1,
              name: 'Schedule',
            ),
            BottomNavigation(
              icon: 'assets/report.png',
              index: 2,
              name: 'Report',
            ),
            BottomNavigation(
              icon: 'assets/notif.png',
              index: 3,
              name: 'Notification',
            ),
          ],
        ),
      );
    }

    return BlocBuilder<ScreenCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: buildContent(currentIndex),
          bottomNavigationBar: customBottomNavigation(),
        );
      },
    );
  }
}
