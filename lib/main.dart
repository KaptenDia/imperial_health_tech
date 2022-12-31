import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pramudia_healthtech_interview/cubit/screen_cubit.dart';
import 'package:pramudia_healthtech_interview/screen/main_screen.dart';

void main() {
  runApp(const HealthTech());
}

class HealthTech extends StatelessWidget {
  const HealthTech({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreenCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
