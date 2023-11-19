import 'package:ardwtalab/Modules/login/cubit/states.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Model/User/login/login_model.dart';
import '../../../Shared/network/end_points.dart';
import '../../../Shared/network/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(initialState) : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  User_Login? loginModel;
  var device_token = FirebaseMessaging.instance.getToken();

  void userLogin({required String mobile, required String password}) {
    emit(LoginLoadingState());
    DioHelper.postData(lang: 'en', token: '', url: LOGIN, data: {
      'mobile': mobile,
      'password': password,
      'deviceId': device_token,
      'countryCode': 'sa',
      'type': 'android',
    }).then((value) {
      loginModel = User_Login.fromJson(value.data);
      print(loginModel!.token);
      emit(LoginSuccessState(loginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = false;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off;
    emit(ChangePasswordVisibilityState());
  }
}
