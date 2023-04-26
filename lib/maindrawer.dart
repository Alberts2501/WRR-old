import 'package:flutter/material.dart';
import 'package:we_are_remebering/pages/profile_page.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.green,
                ),
                SizedBox(height: 5.0),
                Text(
                    'Georg Schmitd',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(height: 5.0),
                Text(
                    'georgschmitd@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
        ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Your Profile"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage(),
                ),
            );
          },
        ),
      ]
    );
  }
}
