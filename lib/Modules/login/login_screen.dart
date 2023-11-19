import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Shared/components/components.dart';
import '../../Layout/layout.dart';
import '../../Shared/components/constans.dart';
import '../../Shared/network/local/cache_helper.dart';
import '../Register/Register_Screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var mobileControl = TextEditingController();
  var passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(LoginInitialState),
        child:
            BlocConsumer<LoginCubit, LoginStates>(listener: (context, state) {
          if (state is LoginSuccessState) {
            if (state.loginModel.token != null) {
              print(state.loginModel.token);
              CacheHelper.saveData(key: 'token', value: state.loginModel.token)
                  .then((value) {
                token = state.loginModel.token!;
                navigateAndFinish(context, Layout());
              });
            }
          }
        }, builder: (context, state) {
          return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              'Login now to Browse to Our Cool App',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            defaultFormField(
                              controller: mobileControl,
                              onTap: () {},
                              onChange: (value) {
                                print(value);
                              },
                              type: TextInputType.phone,
                              validate: (value) {
                                if (value!.isEmpty)
                                  return 'Phone Can not be Empty';
                                else
                                  return null;
                              },
                              label: 'Mobile Number',
                              prefix: Icons.phone,
                              context: context,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            defaultFormField(
                                controller: passwordControl,
                                type: TextInputType.visiblePassword,
                                onTap: () {},
                                onChange: (value) {
                                  print(value);
                                },
                                onSubmit: (value) {},
                                validate: (value) {
                                  if (value!.isEmpty)
                                    return 'Password is to Short';
                                  else
                                    return null;
                                },
                                context: context,
                                isPassword: LoginCubit.get(context).isPassword,
                                label: 'Password',
                                prefix: Icons.lock,
                                suffix: LoginCubit.get(context).suffix,
                                suffixPressed: () {
                                  LoginCubit.get(context)
                                      .changePasswordVisibility();
                                }),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ConditionalBuilder(
                              condition: state is! LoginLoadingState,
                              builder: (context) => defaultButton(
                                function: () {
                                  if (formKey.currentState!.validate()) {
                                    LoginCubit.get(context).userLogin(
                                        mobile: mobileControl.text,
                                        password: passwordControl.text);
                                  }
                                },
                                text: 'Login',
                              ),
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator()),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't Have an Account?",
                                  style: TextStyle(fontSize: 15),
                                ),
                                defaultTextButton(
                                    function: () {
                                      navigateAndFinish(
                                          context, RegisterScreen());
                                    },
                                    text: 'Register')
                              ],
                            ),
                            Center(
                              child: defaultTextButton(
                                  function: () {
                                    // AppCubit.get(context).GuestUser();
                                    // AppCubit.get(context).IsGuest = true;
                                    navigateAndFinish(context, Layout());
                                  },
                                  text: 'Login as guest'),
                            )
                          ]),
                    ),
                  ),
                ),
              ));
          //     },
          //   ),
          // );
        }));
  }
}
