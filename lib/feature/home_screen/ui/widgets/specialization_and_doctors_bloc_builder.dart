import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_cubit.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_state.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctors_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        //  print("Specializations Data List$state");
        return state.maybeWhen(
          specializationLoading: () => setUpLoading(),
          specializationSuccess: (data) {
            var specializationsDataList = data.specializationDataList;
            return setUpSuccess(specializationsDataList);
          },
          specializationError: (errorHandler) => setUpError(errorHandler.apiErrorModel.message.toString()),
          orElse: () => const SizedBox.shrink(
            child: Text('error'),
          ),
        );
      },
    );
  }

  Widget setUpLoading() {
    return SizedBox(
      height: 100.h,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setUpError(String errorMessage) {
    return SizedBox(
      child: Text(errorMessage),
    );
  }

  Widget setUpSuccess(specializationsDataList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationDataList: specializationsDataList,
          ),
          DoctorsListView(
            doctorsList: specializationsDataList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }
}
