import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_cubit.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/speciality_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?>? specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedSpecialityIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecialityIndex = index;
              
              });
              context.read<HomeCubit>().getDoctorsList(
                specializationId:
                widget.specializationDataList?[index]?.id ?? 0,
              );
            },
            child: SpecializationListViewItem(
              itemIndex: index,
              specializationData: widget.specializationDataList?[index],
              isSelected: selectedSpecialityIndex,
            ),
          );
        },
      ),
    );
  }
}
