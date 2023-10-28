// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:supply_and_demand_app/Modules/login/cubit/states.dart';
//
// class LoginCubit extends Cubit<LoginStates> {
//   LoginCubit(initialState) : super(LoginInitialState());
//   static LoginCubit get(context) => BlocProvider.of(context);
//   IconData suffix = Icons.visibility_outlined;
//   bool isPassword = false;
//   void changePasswordVisibility() {
//     isPassword = !isPassword;
//     suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off;
//     emit(ChangePasswordVisibilityState());
//   }
// }
