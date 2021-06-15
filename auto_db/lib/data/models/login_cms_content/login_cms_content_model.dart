import 'package:auto_db/domain/entities/login_cms_content/login_cms_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cms_content_model.freezed.dart';
part 'login_cms_content_model.g.dart';

@freezed
abstract class LoginCMSContentModel with _$LoginCMSContentModel {
  const LoginCMSContentModel._();

  const factory LoginCMSContentModel({
    @required String body, 
  }) = _LoginCMSContentModel;

  LoginCMSContent toDomain(){
    return LoginCMSContent(
      body: body
    );
  }

  factory LoginCMSContentModel.fromJson(Map<String, dynamic> json) =>_$LoginCMSContentModelFromJson(json);
}