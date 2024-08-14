import 'package:json_annotation/json_annotation.dart';
part 'sing_up_request_body.g.dart';

@JsonSerializable()
class SingUpRequestBody {
  String name;
  String email;
  @JsonKey(name: 'phone')
  int phoneNumber;
  int gender;
  String password;
  String password_confirmation;
  SingUpRequestBody({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.password,
    required this.password_confirmation,
  });

  Map<String, dynamic> toJson() => _$SingUpRequestBodyToJson(this);

}
