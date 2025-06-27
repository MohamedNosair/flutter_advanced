import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_advance/feature/home_screen/ui/widgets/doctor_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({
    super.key,
    required this.doctorsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorsData: doctorsList?[index]);
        },
      ),
    );
  }
}
