import 'package:flutter/material.dart';
import 'package:we_are_remebering/maindrawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text(
          'Profile Page',
          style: TextStyle(color: Colors.black))),
      ),
      drawer: Drawer(child: MainDrawer(),),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 75,
            backgroundColor: Colors.green,
          ),
          SizedBox(height: 20),
          Text(
            'Georg Schimtd',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('georgscmitd@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+371 2000000'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new_outlined),
                  title: Text('270487-12145 (Personal code)'),
                ),
                ListTile(
                  leading: Icon(Icons.output),
                  title: Text('01-01-2023'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
