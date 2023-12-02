import 'package:ardwtalab/Layout/cubit/cubit.dart';
import 'package:ardwtalab/Layout/cubit/states.dart';
import 'package:ardwtalab/Model/home/details/similar_ad.dart';
import 'package:ardwtalab/Shared/styles/icon_broken.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Model/home/home_model.dart';
import '../../Shared/styles/colors.dart';

class AdsDetails extends StatefulWidget {
  final Data data;

  const AdsDetails({Key? key, required this.data}) : super(key: key);

  @override
  State<AdsDetails> createState() => _AdsDetailsState();
}

class _AdsDetailsState extends State<AdsDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArdWTalabCubit, ArdWTalabStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: defaultColor,
            title: Text(
              '${widget.data.title}',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                  onPressed: () {
                    print('Share Pressed!');
                  },
                  icon: Icon(Icons.share),
                ),
              ),
            ],
          ),
          // body: SingleChildScrollView(
          //   physics: BouncingScrollPhysics(),
          //   child: Container(
          //     color: Colors.grey[100],
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Column(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.all(20.0),
          //               child: Container(
          //                 width: 700,
          //                 height: 230,
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.circular(30),
          //                 ),
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       child: Column(
          //                         children: [
          //                           Padding(
          //                             padding: const EdgeInsets.only(
          //                               left: 8.0,
          //                               top: 8.0,
          //                             ),
          //                             child: Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Text(
          //                                     '${widget.data.title}',
          //                                     style: TextStyle(
          //                                         fontSize: 22.0,
          //                                         fontWeight: FontWeight.bold),
          //                                   ),
          //                                 ),
          //                                 Expanded(
          //                                   child: IconButton(
          //                                       onPressed: () {
          //                                         print('Favourite Pressed!');
          //                                       },
          //                                       icon: Icon(
          //                                         Icons.favorite_border,
          //                                         size: 30,
          //                                       )),
          //                                 )
          //                               ],
          //                             ),
          //                           ),
          //                           SizedBox(
          //                             height: 25,
          //                           ),
          //                           Padding(
          //                             padding: const EdgeInsets.only(left: 8.0),
          //                             child: Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Container(
          //                                     child: Row(
          //                                       children: [
          //                                         Icon(Icons.tag),
          //                                         SizedBox(width: 5),
          //                                         Text(
          //                                             'Ad Number ${widget.data.key.toString()}')
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 Expanded(
          //                                   child: Container(
          //                                     child: Row(
          //                                       children: [
          //                                         Icon(Icons.sell),
          //                                         SizedBox(width: 5),
          //                                         Text(
          //                                             '${widget.data.adTypeKey}')
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                           SizedBox(
          //                             height: 25,
          //                           ),
          //                           Padding(
          //                             padding: const EdgeInsets.only(left: 8.0),
          //                             child: Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Container(
          //                                     child: Row(
          //                                       children: [
          //                                         Icon(Icons.person),
          //                                         SizedBox(width: 5),
          //                                         Text(
          //                                             '${widget.data.customer!.name}')
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 ),
          //                                 Expanded(
          //                                   child: Container(
          //                                     child: Row(
          //                                       children: [
          //                                         Icon(Icons.location_on),
          //                                         SizedBox(width: 5),
          //                                         Text(
          //                                             '${widget.data.city!.name}')
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 )
          //                               ],
          //                             ),
          //                           ),
          //                           SizedBox(
          //                             height: 25,
          //                           ),
          //                           Padding(
          //                             padding: const EdgeInsets.only(left: 8.0),
          //                             child: Row(
          //                               children: [
          //                                 Expanded(
          //                                   child: Container(
          //                                     child: Row(
          //                                       children: [
          //                                         Icon(Icons.watch_later_sharp),
          //                                         SizedBox(width: 5),
          //                                         Text(
          //                                             '${widget.data.createdAt.toString()}')
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 )
          //                               ],
          //                             ),
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         Container(
          //           color: Colors.grey[100],
          //           child: Column(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 25.0),
          //                 child: Container(
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(
          //                         'Ad details',
          //                         style: TextStyle(
          //                             fontSize: 20.0,
          //                             fontWeight: FontWeight.bold),
          //                       ),
          //                       SizedBox(
          //                         height: 20,
          //                       ),
          //                       Row(
          //                         children: [
          //                           Icon(
          //                             Icons.sell,
          //                             color: Colors.green,
          //                           ),
          //                           SizedBox(
          //                             width: 10.0,
          //                           ),
          //                           Text('${widget.data.price} SAR',
          //                               style: TextStyle(color: Colors.green))
          //                         ],
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.only(right: 15.0),
          //                         child: Row(
          //                           crossAxisAlignment: CrossAxisAlignment.end,
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             Text('${widget.data.title}'),
          //                             SizedBox(
          //                               width: 10,
          //                             ),
          //                             Text(': عنوان الاعلان -'),
          //                           ],
          //                         ),
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.only(right: 15.0),
          //                         child: Row(
          //                           crossAxisAlignment: CrossAxisAlignment.end,
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             Text('${widget.data.department!.title}'),
          //                             SizedBox(
          //                               width: 10,
          //                             ),
          //                             Text(': قسم التطبيق -'),
          //                           ],
          //                         ),
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.only(right: 15.0),
          //                         child: Row(
          //                           crossAxisAlignment: CrossAxisAlignment.end,
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             Text('${widget.data.region!.name}'),
          //                             SizedBox(
          //                               width: 10,
          //                             ),
          //                             Text(': المنطقة -'),
          //                           ],
          //                         ),
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.only(right: 15.0),
          //                         child: Row(
          //                           crossAxisAlignment: CrossAxisAlignment.end,
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             Text('${widget.data.city!.name}'),
          //                             SizedBox(
          //                               width: 10,
          //                             ),
          //                             Text(': المدينة -'),
          //                           ],
          //                         ),
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.only(right: 15.0),
          //                         child: Row(
          //                           crossAxisAlignment: CrossAxisAlignment.end,
          //                           mainAxisAlignment: MainAxisAlignment.end,
          //                           children: [
          //                             Text('${widget.data.adType}'),
          //                             SizedBox(
          //                               width: 10,
          //                             ),
          //                             Text(': اختار نوع الاعلان -'),
          //                           ],
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 20,
          //               ),
          //               Container(
          //                 child: Padding(
          //                   padding:
          //                       const EdgeInsets.only(left: 30, right: 30.0),
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     children: [
          //                       Expanded(
          //                         child: Container(
          //                           decoration:
          //                               BoxDecoration(color: Colors.black),
          //                           height: 5,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 30,
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(
          //                     left: 15.0, right: 15.0, bottom: 15.0),
          //                 child: Container(
          //                   color: Colors.grey[100],
          //                   child: Column(
          //                     children: [
          //                       Stack(
          //                         alignment: AlignmentDirectional.bottomStart,
          //                         children: [
          //                           Container(
          //                               width: double.infinity,
          //                               height: 200,
          //                               decoration: BoxDecoration(
          //                                   image: widget.data.image != null &&
          //                                           widget
          //                                               .data.image!.isNotEmpty
          //                                       ? DecorationImage(
          //                                           image: NetworkImage(
          //                                               '${widget.data.image}'),
          //                                         )
          //                                       : DecorationImage(
          //                                           image: NetworkImage(
          //                                               'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'),
          //                                         ))),
          //                         ],
          //                       ),
          //                       SizedBox(
          //                         height: 30,
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           height: 150,
          //                           width: 400,
          //                           color: Colors.red[50],
          //                           child: Column(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             children: [
          //                               Padding(
          //                                 padding: const EdgeInsets.only(
          //                                     left: 10.0, right: 10),
          //                                 child: Text(
          //                                   'The commission is applied to the requester of the commodity or its viewer ',
          //                                   style: TextStyle(
          //                                       color: Colors.red[700],
          //                                       fontSize: 18,
          //                                       fontWeight: FontWeight.bold),
          //                                 ),
          //                               ),
          //                               Text(
          //                                 'Commission half percent 0.50% ',
          //                                 style: TextStyle(
          //                                     color: Colors.red[700],
          //                                     fontSize: 18,
          //                                     fontWeight: FontWeight.bold),
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         Container(
          //           child: Column(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 8.0),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //                     Expanded(
          //                       child: Container(
          //                         child: Row(
          //                           children: [
          //                             Container(
          //                               decoration: BoxDecoration(
          //                                   color: Colors.grey[200],
          //                                   borderRadius:
          //                                       BorderRadius.circular(20)),
          //                               child: IconButton(
          //                                 onPressed: () {},
          //                                 icon:
          //                                     Icon(Icons.thumb_up_alt_outlined),
          //                                 color: Colors.blue,
          //                               ),
          //                             ),
          //                             SizedBox(width: 10),
          //                             Container(
          //                               decoration: BoxDecoration(
          //                                   color: Colors.grey[200],
          //                                   borderRadius:
          //                                       BorderRadius.circular(20)),
          //                               child: IconButton(
          //                                 onPressed: () {},
          //                                 icon: Icon(
          //                                     Icons.thumb_down_alt_outlined),
          //                                 color: Colors.red,
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                     Expanded(
          //                       child: Row(
          //                         mainAxisAlignment: MainAxisAlignment.end,
          //                         children: [
          //                           Padding(
          //                             padding:
          //                                 const EdgeInsets.only(right: 8.0),
          //                             child: Container(
          //                               width: 90,
          //                               decoration: BoxDecoration(
          //                                   color: Colors.green[300],
          //                                   borderRadius:
          //                                       BorderRadius.circular(15)),
          //                               child: TextButton(
          //                                 onPressed: () {},
          //                                 child: Text(
          //                                   'Follow',
          //                                   style: TextStyle(
          //                                       color: Colors.white,
          //                                       fontWeight: FontWeight.bold,
          //                                       fontSize: 15),
          //                                 ),
          //                               ),
          //                             ),
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 8.0),
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       decoration: BoxDecoration(
          //                         color: Colors.grey[200],
          //                         borderRadius: BorderRadius.circular(15),
          //                       ),
          //                       child: IconButton(
          //                           onPressed: () {},
          //                           icon: Icon(
          //                             IconBroken.Message,
          //                             color: Colors.yellow,
          //                             size: 30.0,
          //                           )),
          //                     )
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          body: ConditionalBuilder(
              condition: ArdWTalabCubit.get(context).similarAd != null,
              builder: (context) =>
                  BuildDetails(ArdWTalabCubit.get(context).similarAd!, context),
              fallback: (context) =>
                  Center(child: CircularProgressIndicator())),
        );
      },
    );
  }

  Widget BuildDetails(SimilarAd similarAd, context) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 700,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        top: 8.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '${widget.data.title}',
                                              style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Expanded(
                                            child: IconButton(
                                                onPressed: () {
                                                  print('Favourite Pressed!');
                                                },
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                  size: 30,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.tag),
                                                  SizedBox(width: 5),
                                                  Text(
                                                      'Ad Number ${widget.data.key.toString()}')
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.sell),
                                                  SizedBox(width: 5),
                                                  Text(
                                                      '${widget.data.adTypeKey}')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.person),
                                                  SizedBox(width: 5),
                                                  Text(
                                                      '${widget.data.customer!.name}')
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.location_on),
                                                  SizedBox(width: 5),
                                                  Text(
                                                      '${widget.data.city!.name}')
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.watch_later_sharp),
                                                  SizedBox(width: 5),
                                                  Text(
                                                      '${widget.data.createdAt.toString()}')
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ad details',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sell,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('${widget.data.price} SAR',
                                        style: TextStyle(color: Colors.green))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('${widget.data.title}'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(': عنوان الاعلان -'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('${widget.data.department!.title}'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(': قسم التطبيق -'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('${widget.data.region!.name}'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(': المنطقة -'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('${widget.data.city!.name}'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(': المدينة -'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('${widget.data.adType}'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(': اختار نوع الاعلان -'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 30, right: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.black),
                                    height: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 15.0),
                          child: Container(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomStart,
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            image: widget.data.image != null &&
                                                    widget
                                                        .data.image!.isNotEmpty
                                                ? DecorationImage(
                                                    image: NetworkImage(
                                                        '${widget.data.image}'),
                                                  )
                                                : DecorationImage(
                                                    image: NetworkImage(
                                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'),
                                                  ))),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 150,
                                    width: 400,
                                    color: Colors.red[50],
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10),
                                          child: Text(
                                            'The commission is applied to the requester of the commodity or its viewer ',
                                            style: TextStyle(
                                                color: Colors.red[700],
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          'Commission half percent 0.50% ',
                                          style: TextStyle(
                                              color: Colors.red[700],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.thumb_up_alt_outlined),
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.thumb_down_alt_outlined),
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.green[300],
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Follow',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      IconBroken.Message,
                                      color: Colors.yellow,
                                      size: 30.0,
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Similar Ad',
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 100,
                                child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        BuildSimilarAd(similarAd.data![index]),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          width: 10,
                                        ),
                                    itemCount: similarAd.data!.length),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget BuildSimilarAd(SimilarAdData model) => Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [Text('${model.title}')],
              )
            ],
          )
        ],
      ));
}
