import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/repo/home_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationataList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (data) {
        specializationataList = data.specializationDataList ?? [];
        getDoctorsList(specializationId: specializationataList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationataList));
      },
      failure: (errorhandler) {
        emit(HomeState.specializationsError(errorhandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle("no doctors found")));
    }
  }

  getDoctorsListBySpecializationId(int? specializationId) {
    return specializationataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
