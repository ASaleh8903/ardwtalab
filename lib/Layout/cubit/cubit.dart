import 'package:ardwtalab/Layout/cubit/states.dart';
import 'package:ardwtalab/Shared/components/constans.dart';
import 'package:ardwtalab/Shared/network/end_points.dart';
import 'package:ardwtalab/Shared/network/remote/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Model/home_model.dart';
import '../../Modules/Following/following_screen.dart';
import '../../Modules/Home/home_Screen.dart';
import '../../Modules/Messages/message_screen.dart';
import '../../Modules/Notifications/notifications_screen.dart';

class ArdWTalabCubit extends Cubit<ArdWTalabStates> {
  ArdWTalabCubit(
    ArdWTalabStates initialState,
  ) : super(initialState);

  static ArdWTalabCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  String SelectedItem = 'Country';

  List<Widget> screens = [
    HomeScreen(),
    FollowingScreen(),
    NotificationsScreen(),
    MessageScreen()
  ];

  List<String> titles = ['Home', 'Following', 'Notifications', 'Messages'];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  HomeModel? homeModel;
  Data? data;

  Future<void> GetHomeData() async {
    emit(LoadingHomeDataState());
    await DioHelper.getData(url: HOME, token: token).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      data = Data.fromJson(value.data);
      print(value.data);
      print(homeModel!.data);
      print(homeModel!.data!.length);
      emit(SuccessHomeDataState());
    }).catchError((error) {
      emit(ErrorHomeDataState());
      print(error.toString());
    });
  }

  Department? departmentModel;

  Future<void> getDepartment() async {
    emit(getDepartmentLoading());
    await DioHelper.getData(url: DEPARTMENT, token: token).then((value) {
      print(value.data);
      departmentModel = Department.fromJson(value.data);

      emit(getDepartmentSuccess());
    }).catchError((error) {
      emit(getDepartmentError());
      print(error.toString());
    });
  }
}
