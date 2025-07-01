import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/speciality_see_all.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_bloc_builder.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/home_tap_bar.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/specialization_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, $arg',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const HomeTapBar(),
              const DoctorsBlueContainer(),
              heightSpace(8),
              const DoctorSpecialitySeeAll(),
              heightSpace(8),
              const SpecializationBlocBuilder(),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
