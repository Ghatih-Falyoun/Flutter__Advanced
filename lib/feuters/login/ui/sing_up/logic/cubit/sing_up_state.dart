import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_up_state.freezed.dart';

@freezed
class SingUpState<T> with _$SingUpState {
    const factory SingUpState.initial() = _Initial;
  const factory SingUpState.loading() = Loading;
  const factory SingUpState.success(T data) = success<T>;
  const factory SingUpState.error({required String error}) = Error;
}
