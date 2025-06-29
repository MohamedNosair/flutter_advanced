import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_cubit.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_state.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctor_speciality_see_all.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_list_view.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/home_tap_bar.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/specialization_and_doctors_bloc_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTapBar(),
                const DoctorsBlueContainer(),
                heightSpace(8),
                const DoctorSpecialitySeeAll(),
                heightSpace(8),
                const SpecializationAndDoctorsBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
