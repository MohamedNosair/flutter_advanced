import 'package:flutter_advance/feature/home_screen/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (data) {
      emit(HomeState.specializationSuccess(data));
    }, failure: (error) {
      emit(HomeState.specializationError(error));
    });
  }
}
