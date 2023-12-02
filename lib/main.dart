import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Layout/cubit/cubit.dart';
import 'Layout/cubit/splash_screen.dart';
import 'Layout/cubit/states.dart';
import 'Modules/login/splash_screen.dart';
import 'Shared/bloc_observer.dart';
import 'Shared/cubit/cubit/app_cubit.dart';
import 'Shared/cubit/states/states.dart';
import 'Shared/network/local/cache_helper.dart';
import 'Shared/network/remote/dio_helper.dart';
import 'Shared/styles/themes.dart';

void main() async {
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
      widget = LayoutSplashScreen();
    else
      widget = LoginSplashScreen();
  } else {
    widget = LoginSplashScreen();
  }

  runApp(MyApp(
    isDark: isDark,
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
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
                  ..getDepartment()
                  ..GetSimilarAd()
                  ..getUserData()
            // ..GetAdDetails()
            )
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
