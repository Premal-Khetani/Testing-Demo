import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cms_content.freezed.dart';

@freezed
abstract class LoginCMSContent with _$LoginCMSContent {
  const factory LoginCMSContent({
    @required String body, 
  }) = _LoginCMSContent;
}