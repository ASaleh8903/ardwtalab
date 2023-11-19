import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Shared/styles/colors.dart';
import '../../Layout/cubit/cubit.dart';
import '../../Layout/cubit/states.dart';
import '../../Model/home/home_model.dart';
import '../../Shared/Components/components.dart';
import 'ads_details.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var searchController = TextEditingController();

  void initState() {
    super.initState();
    // ArdWTalabCubit.get(context).homeModel;
    // ArdWTalabCubit.get(context).data;
    // ArdWTalabCubit.get(context).departmentModel;
    // ArdWTalabCubit.get(context).GetHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArdWTalabCubit, ArdWTalabStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: defaultColor,
            toolbarHeight: 95,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50.0, bottom: 15),
                  child: Container(
                    color: Colors.white,
                    child: defaultFormField(
                      label: 'search for ad product..other',
                      context: context,
                      controller: searchController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your search here';
                        }
                        return null;
                      },
                      type: TextInputType.text,
                      prefix: Icons.search_outlined,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_alt_rounded),
                  iconSize: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
          drawer: Container(color: Colors.white, child: NavDrawer()),
          body: ConditionalBuilder(
              condition: ArdWTalabCubit.get(context).homeModel != null,
              builder: (context) => productBuilder(
                  ArdWTalabCubit.get(context).homeModel!,
                  context,
                  ArdWTalabCubit.get(context).departmentModel!),
              fallback: (context) =>
                  Center(child: CircularProgressIndicator())),
        );
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
                crossAxisSpacing: 0.5,
                mainAxisSpacing: 0.5,
                childAspectRatio: 1 / 1.90,
                children: List.generate(
                  model.data!.length,
                  (index) => productGridView(model.data![index], context),
                ),
              ),
            ),
          ],
        ),
      );

  Widget productGridView(Data model, context) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () => navigateTo(
              context,
              AdsDetails(
                data: model,
              )),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '${model.title}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${model.customer!.name}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${model.city!.name}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_sharp),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${model.createdAt}',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            child: Image(
                              image:
                                  AssetImage('assets/images/hand extended.png'),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '${model.adType}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green[300],
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sell,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${model.price}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
