import 'package:flutter/material.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';
import 'package:pramudia_healthtech_interview/widgets/date_card.dart';
import 'package:pramudia_healthtech_interview/widgets/date_doctor_card.dart';
import 'package:pramudia_healthtech_interview/widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        margin: const EdgeInsets.only(
          right: 21,
          left: 28,
          top: 25,
          bottom: 24,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '👋 Hello!',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  'Shahin Alam',
                  style: primaryTextStyle.copyWith(
                    fontSize: 27,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 49,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
          color: lightBlueColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 15,
            top: 18,
            bottom: 18,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/search.png',
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Search medical..',
                style: primaryTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 12,
                  color: const Color(0xff8AA0BC),
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/filters.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget services() {
      return Container(
        margin: const EdgeInsets.only(
          top: 23,
          right: 28,
          left: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services',
              style: primaryTextStyle.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ServiceCard(
                  backgrondColor: lightBlueColor,
                  image: 'assets/service1.png',
                  margin: const EdgeInsets.only(
                    right: 11,
                  ),
                ),
                ServiceCard(
                  backgrondColor: lightOrangeColor,
                  image: 'assets/service2.png',
                  margin: const EdgeInsets.only(
                    right: 11,
                  ),
                ),
                const ServiceCard(
                  backgrondColor: Color(0xffD6F6FF),
                  image: 'assets/service3.png',
                  margin: EdgeInsets.only(
                    right: 11,
                  ),
                ),
                const ServiceCard(
                  backgrondColor: Color(0xffF2E3E9),
                  image: 'assets/service4.png',
                  margin: EdgeInsets.only(),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget promotion() {
      return Container(
        margin: const EdgeInsets.only(
          left: 28,
          right: 28,
          top: 30,
        ),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: lightBlueColor,
          borderRadius: BorderRadius.circular(
            28,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get the Best\nMedical Service',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy\ntext of the printing',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(
                top: 17,
                right: 7,
              ),
              width: 119,
              height: 182,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/dcs.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget upcoming() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Appointments',
              style: primaryTextStyle.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DateDoctorCard(
                    date: '12',
                    dateDescribe: 'Tue',
                    backgroundColor: whiteColor.withOpacity(0.14),
                    cardbackgroundColor: blueColor,
                    time: '09:30 AM',
                    doctorName: 'Dr. Mim Akhter',
                    doctorNameColor: whiteColor,
                    timeColor: whiteColor,
                    spesialisColor: whiteColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  DateDoctorCard(
                    date: '12',
                    dateDescribe: 'Tue',
                    backgroundColor: orangeColor,
                    cardbackgroundColor: lightOrangeColor,
                    time: '09:30 AM',
                    doctorName: 'Dr. Mim Akhter',
                    doctorNameColor: blackColor,
                    timeColor: blackColor,
                    spesialisColor: blackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          appBar(),
          searchBar(),
          services(),
          promotion(),
          upcoming(),
        ],
      ),
    );
  }
}
