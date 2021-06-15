import 'dart:convert';

import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/errors/failure.dart';
import 'package:auto_db/data/models/login_cms_content/login_cms_content_model.dart';
import 'package:auto_db/data/models/user_login_model/user_login_model.dart';
import 'package:auto_db/data/models/user_login_model/user_login_response_model.dart';
import 'package:auto_db/data/models/user_register/user_register_post_body_model.dart';
import 'package:auto_db/data/utills/error_mesages.dart';
import 'package:auto_db/data/utills/network_information.dart';
import 'package:auto_db/domain/entities/login_cms_content/login_cms_content.dart';
import 'package:auto_db/domain/entities/user_login/user_login.dart';
import 'package:auto_db/core/base/response_wrapper.dart';
import 'package:auto_db/domain/entities/user_register/user_register_post_body.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:auto_db/domain/entities/user_login/user_login_response.dart';
import 'package:auto_db/main.dart';
import 'package:dio/dio.dart';

const String _loginPath = '/passport/login';
const String _registerPath = '/passport/register';
const String _loginCmsPath = '/cms/login';
const String _getUserProfile = '/passport/user';
const String _updateProfile = '/passport/user/update';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  MainDioClient dioClient;

  AuthenticationRepositoryImplementation() {
    _resolveDependencies();
  }

  AuthenticationRepositoryImplementation.withClient(MainDioClient client) {
    dioClient = client;
  }

  void _resolveDependencies() {
    dioClient = getIt.get<MainDioClient>();
  }

  @override
  Future<ResponseWrapper<UserLoginResponse>> login(
      {UserLogin userLogin}) async {
    ResponseWrapper<UserLoginResponse> _responseWrapper =
        ResponseWrapper<UserLoginResponse>();

    try {
      final _body = UserLoginModel.fromDomain(userLogin).toJson();
      print("Login body: " + jsonEncode(_body));
      final _response = await dioClient.postWithoutHandlingError(
        _loginPath,
        data: jsonEncode(_body),
        options: Options(
            headers: {'Accept': 'application/json'},
            responseType: ResponseType.json),
      );

      if (_response.statusCode == 200) {
        print('Login response: ' + _response.data.toString());
        _responseWrapper.body =
            UserLoginResponseModel.fromJson(_response.data).toDomain();
      }
    } on DioError catch (e) {
      if (e.response == null) {
        final haveInternet = await NetworkInformation.checkConnectivity();
        _responseWrapper.error =
            haveInternet ? Failure.genericError() : Failure.noInternerError();
      } else {
        print('Login error: ' + e.message);
        if (e.response.statusCode == 401 &&
            e.response.data
                .toString()
                .contains('accountNotActive')) {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage: StringConstants.accountNotVerifiedError);
        } else {
          _responseWrapper.error = Failure.serverError(
            statusCode: e.response.statusCode,
            massage: ErrorMassages.getLoginErrorMassage(e.response.statusCode));
        }
      }
    } catch (e) {
      print('User login error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<bool>> register(
      {UserRegisterPostBody userRegisterPostBody}) async {
    ResponseWrapper<bool> _responseWrapper = ResponseWrapper<bool>();

    try {
      final _body =
          UserRegisterPostBodyModel.fromDomain(userRegisterPostBody).toJson();
      print("Register body: " + jsonEncode(_body));
      final _response = await dioClient.postWithoutHandlingError(
        _registerPath,
        data: jsonEncode(_body),
        options: Options(
            headers: {'Accept': 'application/json'},
            responseType: ResponseType.json),
      );

      if (_response.statusCode == 200) {
        print('User register response: ' + _response.data.toString());
        _responseWrapper.body = true;
      }
    } on DioError catch (e) {
      if (e.response == null) {
        final haveInternet = await NetworkInformation.checkConnectivity();
        _responseWrapper.error =
            haveInternet ? Failure.genericError() : Failure.noInternerError();
      } else {
        print('User register: ' +
            e.response.statusCode.toString() +
            ' ' +
            e.response.data.toString());
        if (e.response.statusCode == 422 &&
            e.response.data
                .toString()
                .contains('The email has already been taken')) {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage: StringConstants.emailIsAlredyTakenError);
        } else {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage:
                  ErrorMassages.getHttpErrorMassage(e.response.statusCode));
        }
      }
    } catch (e) {
      print('User register error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<LoginCMSContent>> getLoginPageCmsContent() async {
    ResponseWrapper<LoginCMSContent> _responseWrapper =
        ResponseWrapper<LoginCMSContent>();

    try {
      final _response = await dioClient.get(_loginCmsPath,
          options: Options(responseType: ResponseType.json),
          logTag: 'Login cms content');

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Login cms content response: ' +
              _response.response.data.toString());
          _responseWrapper.body =
              LoginCMSContentModel.fromJson(_response.response.data).toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Login cms content error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<UserRegisterPostBody>> getUserProfile() async {
    ResponseWrapper<UserRegisterPostBody> _responseWrapper =
        ResponseWrapper<UserRegisterPostBody>();

    try {
      final _response = await dioClient.get(_getUserProfile,
          options: Options(responseType: ResponseType.json),
          logTag: 'Get User Profile',
          haveAutorization: true);

      if (_response.response != null) {
        if (_response.response.statusCode == 200) {
          print('Get User Profile response: ' +
              _response.response.data.toString());
          _responseWrapper.body =
              UserRegisterPostBodyModel.fromJson(_response.response.data)
                  .toDomain();
        }
      }

      if (_response.error != null) {
        _responseWrapper.error = _response.error;
      }
    } catch (e) {
      print('Get User Profile error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }

  @override
  Future<ResponseWrapper<UserRegisterPostBody>> updateProfile(
      {UserRegisterPostBody userRegisterPostBody}) async {
    ResponseWrapper<UserRegisterPostBody> _responseWrapper =
        ResponseWrapper<UserRegisterPostBody>();

    try {
      final _body =
          UserRegisterPostBodyModel.fromDomain(userRegisterPostBody).toJson();
      print("Update Profile body: " + jsonEncode(_body));
      final _response = await dioClient.postWithoutHandlingError(
        _updateProfile,
        data: jsonEncode(_body),
        options: Options(
            headers: {'Accept': 'application/json'},
            responseType: ResponseType.json),
        haveAutorization: true,
      );

      if (_response.statusCode == 200) {
        print('Update Profile response: ' + _response.data.toString());
        _responseWrapper.body =
            UserRegisterPostBodyModel.fromJson(_response.data).toDomain();
      }
    } on DioError catch (e) {
      if (e.response == null) {
        final haveInternet = await NetworkInformation.checkConnectivity();
        _responseWrapper.error =
            haveInternet ? Failure.genericError() : Failure.noInternerError();
      } else {
        print('UUpdate Profile: ' +
            e.response.statusCode.toString() +
            ' ' +
            e.response.data.toString());
        if (e.response.statusCode == 422 &&
            e.response.data
                .toString()
                .contains('The email has already been taken')) {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage: StringConstants.emailIsAlredyTakenError);
        } else {
          _responseWrapper.error = Failure.serverError(
              statusCode: e.response.statusCode,
              massage:
                  ErrorMassages.getHttpErrorMassage(e.response.statusCode));
        }
      }
    } catch (e) {
      print('Update Profile error: ' + e.toString());
      _responseWrapper.error = Failure.genericError();
    }

    return _responseWrapper;
  }
}
