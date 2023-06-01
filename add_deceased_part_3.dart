import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_are_remebering/pages/homepage.dart';
import 'package:we_are_remebering/pages/search_page.dart';
import 'package:we_are_remebering/FormData.dart';

import 'add_deceased.dart';
import 'add_graveyard.dart';
import 'add_tomb.dart';

class AddDeceasedPagePart3 extends StatefulWidget {
  const AddDeceasedPagePart3({Key? key}) : super(key: key);

  @override
  State<AddDeceasedPagePart3> createState() => _AddDeceasedPagePart3State();
}

class _AddDeceasedPagePart3State extends State<AddDeceasedPagePart3>{

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

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
  }

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

              SizedBox(height: 45),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Icon(
                    Icons.add_to_drive_outlined,
                    size: 100,
                  ),
                ),
              ),

              SizedBox(height: 51.650,),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Icon(
                    Icons.add_a_photo,
                    size: 100,
                  ),
                ),
              ),

              SizedBox(height: 50),

              // sign in button
              GestureDetector(
                onTap: () => {

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
                      child: Text('Add',
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

              SizedBox(height: 17.5),

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
