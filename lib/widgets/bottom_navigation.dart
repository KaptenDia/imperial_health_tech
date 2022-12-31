import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pramudia_healthtech_interview/cubit/screen_cubit.dart';
import 'package:pramudia_healthtech_interview/shared/theme.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.icon,
    required this.index,
    required this.name,
  });
  final String icon;
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScreenCubit>().setScreen(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            width: 24,
            height: 24,
            color: context.read<ScreenCubit>().state == index
                ? blueColor
                : Color(0xff7B8D9E),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 8,
            ),
            child: Text(
              name,
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
                color: context.read<ScreenCubit>().state == index
                    ? blueColor
                    : Color(0xff7B8D9E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
