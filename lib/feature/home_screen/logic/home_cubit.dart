import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:flutter_advance/core/networking/api_handler_error.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_advance/feature/home_screen/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?> specializationList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (data) {
      specializationList = data.specializationDataList ?? [];


      getDoctorsList(specializationId: specializationList.first?.id ?? 0);

      emit(HomeState.specializationSuccess(specializationList));
    }, failure: (apiErrorModel) {
      emit(HomeState.specializationError(apiErrorModel));
    });
  }

  getDoctorsList({required int specializationId}) {
    List<Doctors?> specializationsDoctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (specializationsDoctorsList.isNullOrEmpty()) {
      emit(const HomeState.doctorsError());
    } else {
      emit(HomeState.doctorsSuccess(specializationsDoctorsList));
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializationList
        .firstWhere((element) => element?.id == specializationId)
        ?.doctorsList;
  }
}
