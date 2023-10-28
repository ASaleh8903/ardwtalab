import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Modules/Add_New/add_new.dart';
import '../Shared/Components/components.dart';
import '../Shared/styles/colors.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArdWTalabCubit, ArdWTalabStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ArdWTalabCubit.get(context);

        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeIndex(index);
            },
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.rss_feed,
                ),
                label: 'Following',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                ),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                ),
                label: 'Messages',
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, -2),
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.white, width: 6.0),
                    shape: BoxShape.circle,
                    color: defaultColor),
                child: Material(
                    elevation: 0,
                    borderOnForeground: false,
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, NewScreen());
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ))),
          ),
          backgroundColor: defaultColor,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
        );
      },
    );
  }
}
