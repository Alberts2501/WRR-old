import 'package:flutter/material.dart';
import 'package:we_are_remebering/maindrawer.dart';

class DeceasedProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
          'Deceased profile',
          style: TextStyle(color: Colors.white))),
      ),
      drawer: Drawer(child: MainDrawer(),),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 75,
            backgroundColor: Colors.grey,
          ),
          SizedBox(height: 20),
          Text(
            'Sigurd Skarson',
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
                  title: Text('15 July 1933'),
                ),
                ListTile(
                  leading: Icon(Icons.accessibility_new_outlined),
                  title: Text('16 Juny 2019'),
                ),
                ListTile(
                  leading: Icon(Icons.output),
                  title: Text('1'),
                ),
                ListTile(
                  leading: Icon(Icons.output),
                  title: Text('Kalnaroga kapi'),
                ),

                // Relatives

                // Familiar

              ],
            ),
          ),
        ],
      ),
    );
  }
}
