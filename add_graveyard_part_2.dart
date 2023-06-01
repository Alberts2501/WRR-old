import 'package:flutter/material.dart';
import 'package:we_are_remebering/pages/add_deceased.dart';
import 'package:we_are_remebering/maindrawer.dart';
import 'package:we_are_remebering/pages/add_tomb.dart';
import 'package:we_are_remebering/pages/homepage.dart';
import 'package:we_are_remebering/pages/search_page.dart';

import 'add_graveyard.dart';

class AddGraveyardPagePart2 extends StatefulWidget {
  const AddGraveyardPagePart2({Key? key}) : super(key: key);

  @override
  State<AddGraveyardPagePart2> createState() => _AddGraveyardPagePart2State();
}

class _AddGraveyardPagePart2State extends State<AddGraveyardPagePart2>{

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Add deceased'),
                onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddDeceasedPage()));
                },
              ),
              ListTile(
                title: Text('Add tomb'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddTombPage()));
                },
              ),
              ListTile(
                title: Text('Add graveyard'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddGraveyardPage()));
                },
              ),
            ],
          );
        }
    );
  }

  final List<Widget> _pages = [
    UserHome(),
    AddDeceasedPage(),
    SearchPage(),
    AddTombPage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 2.625),

              // Icon
              Icon(
                Icons.info_outlined,
                size: 100,),

              SizedBox(height: 20),

              // email textfield

              SizedBox(height: 12.5),

              // Sex textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      height: 250,
                      child: TextField(
                        minLines: 1,
                        maxLines: 6,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type graveyards description...(not obligate)',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // sign in button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddGraveyardPagePart2()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text('Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 1.5),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => {
          if (index == 0 || index == 2) {
            _navigateBottomBar(index)
          }
          else {
            _showBottomSheet()
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
