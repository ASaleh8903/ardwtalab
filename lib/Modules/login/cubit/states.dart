import '../../../Model/User/login/login_model.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final User_Login loginModel;

  LoginSuccessState(this.loginModel);
}

class LoginErrorState extends LoginStates {
  // final String error;
  //
  // LoginErrorState(this.error);
}

class ChangePasswordVisibilityState extends LoginStates {}
