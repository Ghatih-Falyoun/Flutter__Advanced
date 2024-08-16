import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/repo/home_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (data) {
        
        emit(HomeState.specializationsSuccess(data));
      },
      failure: (errorhandler) {
        emit(HomeState.specializationsError(errorhandler));
      },
    );
  }
}
