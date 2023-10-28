import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Shared/styles/colors.dart';
import '../../Layout/cubit/cubit.dart';
import '../../Layout/cubit/states.dart';
import '../../Model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    ArdWTalabCubit.get(context).homeModel;
    ArdWTalabCubit.get(context).data;
    ArdWTalabCubit.get(context).departmentModel;
    ArdWTalabCubit.get(context).GetHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArdWTalabCubit, ArdWTalabStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ConditionalBuilder(
            condition: ArdWTalabCubit.get(context).homeModel != null,
            builder: (context) => productBuilder(
                ArdWTalabCubit.get(context).homeModel!,
                context,
                ArdWTalabCubit.get(context).departmentModel!),
            fallback: (context) => Center(child: CircularProgressIndicator()));
      },
    );
  }

  Widget productBuilder(HomeModel model, context, Department department) =>
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 1 / 1.80,
                children: List.generate(
                  model.data!.length,
                  (index) => productGridView(model.data![index], context),
                ),
              ),
            ),
          ],
        ),
      );

  Widget categoriesList(Data model, context) => Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image(
            image: NetworkImage(
              '${model.image}',
            ),
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
          Container(
            width: 100,
            color: Colors.black.withOpacity(0.8),
            child: Text(
              '${ArdWTalabCubit.get(context).data!.title}',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      );

  Widget productGridView(Data model, context) => Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: model.image != null
                            ? DecorationImage(
                                image: NetworkImage('${model.image}'),
                              )
                            : DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'),
                              ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.department}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      height: 1.3,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${model.price}',
                        style: TextStyle(fontSize: 12, color: defaultColor),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
