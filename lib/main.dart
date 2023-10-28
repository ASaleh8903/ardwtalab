import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Layout/cubit/cubit.dart';
import 'Layout/cubit/states.dart';
import 'Layout/layout.dart';
import 'Modules/login/login_screen.dart';
import 'Modules/on_boarding/on_boarding.dart';
import 'Shared/bloc_observer.dart';
import 'Shared/cubit/cubit/app_cubit.dart';
import 'Shared/cubit/states/states.dart';
import 'Shared/network/local/cache_helper.dart';
import 'Shared/network/remote/dio_helper.dart';
import 'Shared/styles/themes.dart';

void main() async {
  // بيتأكد ان كل حاجه هنا في الميثود خلصت و بعدين يتفح الابلكيشن
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  Widget widget;

  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  String? token = CacheHelper.getData(key: 'token');
  print(token);

  if (onBoarding != null) {
    if (token != null)
      widget = Layout();
    else
      widget = LoginScreen();
  } else {
    widget = OnBoardingScreen();
  }

  runApp(MyApp(
    isDark: isDark,
    startWidget: widget,
  ));
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget {
  // constructor
  // build
  final bool? isDark;
  final Widget? startWidget;

  MyApp({
    this.isDark,
    this.startWidget,
  });
  // final shopCubit =
  //     ShopCubit(cacheHelper: CacheHelper(), dioHelper: DioHelper());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDark ?? false,
            ),
        ),
        BlocProvider(
          create: (BuildContext context) =>
              ArdWTalabCubit(ArdWTalabInitialState())
                ..GetHomeData()
                ..getDepartment(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: startWidget,
          );
        },
      ),
    );
  }
}
