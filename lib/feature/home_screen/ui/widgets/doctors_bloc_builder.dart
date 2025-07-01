import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_cubit.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_state.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (BuildContext context, HomeState state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return DoctorsListView(
              doctorsList: doctorsList,
            );
          },
          doctorsError: () =>const SizedBox(),
          orElse: () {
            return const SizedBox.shrink(
              child: Text('No doctors found'),
            );
          },
        );
      },
    );
  }
}
