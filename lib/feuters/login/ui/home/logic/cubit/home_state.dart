import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(
          List<SpecializationsData?>? specializationsResponseModel) =
      SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;

  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorslist) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) = DoctorsError;
}
