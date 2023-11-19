import 'package:ardwtalab/Shared/styles/colors.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  var TypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: defaultColor,
          toolbarHeight: 70,
          title: Text(
            'Add New',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Add New Ad From Fill This Data'),
            ),
          ],
        ));
  }
}
