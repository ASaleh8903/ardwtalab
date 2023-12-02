import 'package:flutter/material.dart';

import '../../Model/home/details/similar_ad.dart';

Widget SimilarAdWidget(context, SimilarAdData model) => Column(
      children: [Text('${model.title}')],
    );
