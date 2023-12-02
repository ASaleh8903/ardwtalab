import 'package:ardwtalab/Modules/login/cubit/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Model/User/login/login_model.dart';
import '../../../Shared/components/constans.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(initialState) : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  User_Login? loginModel;

  // void userLogin({required String mobile, required String password}) {
  //   emit(LoginLoadingState());
  //   DioHelper.postData(lang: 'en', token: '', url: LOGIN, data: {
  //     'mobile': mobile,
  //     'password': password,
  //     'device_token': "aias",
  //     'country_Code': 'sa',
  //     'type': "android",
  //   }).then((value) {
  //     loginModel = User_Login.fromJson(value.data);
  //     print(loginModel!.token);
  //     emit(LoginSuccessState(loginModel!));
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(LoginErrorState(error.toString()));
  //   });
  // }

  Future<void> userLogin({
    required mobile,
    required password,
  }) async {
    emit(LoginLoadingState());
    try {
      final response = await Dio().post(
        // "${Constants.baseUrl}${Constants.login}",
        "https://sender.fudex-tech.net/ard-w-talab/public/api/customer-auth/login",
        data: {
          "country_code": "sa",
          "mobile": mobile,
          "password": password,
          "device_token": "kkdkkdddk ",
          "type": "android"
        },
      );

      print(response.data);
      final loginModel = User_Login.fromJson(response.data);
      print(loginModel.token);
      // await saveUserToken("${loginModel.token}");
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', loginModel.token.toString()).then((value) {
        token = loginModel.token.toString();
      });
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$token");
      emit(LoginSuccessState(loginModel));
    } catch (e) {
      print(e.toString());
      emit(LoginErrorState());
    }
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = false;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off;
    emit(ChangePasswordVisibilityState());
  }
}

class Constants {
  static const String baseUrl =
      "https://sender.fudex-tech.net/ard-w-talab/public/api";
  static const String login =
      "https://sender.fudex-tech.net/ard-w-talab/public/api/customer-auth/login";
}
