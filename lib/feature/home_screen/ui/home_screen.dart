import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/home_tap_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.yellow,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTapBar(),
              DoctorsBlueContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
