import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: IconTheme(
        data: IconThemeData(color: Colors.white),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                  child: Image(
                image: AssetImage('assets/images/Logo.jpeg'),
                width: 600,
                height: 600,
                fit: BoxFit.fitWidth,
              )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text(
                'offers',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.point_of_sale),
              title: Text(
                'Pay site commission',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text(
                'Contact US',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.warning_amber),
              title: Text(
                'Usage policy',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Terms and conditions',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.language_outlined),
              title: Text(
                'Change Language',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About US',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
