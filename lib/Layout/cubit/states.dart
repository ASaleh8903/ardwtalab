import '../../Model/User/login/login_model.dart';

abstract class ArdWTalabStates {}

class ArdWTalabInitialState extends ArdWTalabStates {}

class AppChangeBottomNavBarState extends ArdWTalabStates {}

class LoadingHomeDataState extends ArdWTalabStates {}

class SuccessHomeDataState extends ArdWTalabStates {}

class ErrorHomeDataState extends ArdWTalabStates {}

class getDepartmentLoading extends ArdWTalabStates {}

class getDepartmentSuccess extends ArdWTalabStates {}

class getDepartmentError extends ArdWTalabStates {}

class GetAdDetailsLoading extends ArdWTalabStates {}

class GetAdDetailsSuccess extends ArdWTalabStates {}

class GetAdDetailsError extends ArdWTalabStates {}

class GetSimilarAdLoading extends ArdWTalabStates {}

class GetSimilarAdSuccess extends ArdWTalabStates {}

class GetSimilarAdError extends ArdWTalabStates {}

class LoadingUserDataState extends ArdWTalabStates {}

class SuccessUserDataState extends ArdWTalabStates {
  final User_Login loginModel;

  SuccessUserDataState(this.loginModel);
}

class ErrorUserDataState extends ArdWTalabStates {}
