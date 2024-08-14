import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';
@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Scuccess<T>;
  const factory ApiResult.failure(ErrorHandler errorhandler) = Failure<T>;
}
