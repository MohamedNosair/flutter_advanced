import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?>? specializationDataList;
  const DoctorSpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList?.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            itemIndex: index,
            specializationData: specializationDataList?[index],
          );
        },
      ),
    );
  }
}
