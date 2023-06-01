import 'package:flutter/material.dart';
import 'package:we_are_remebering/pages/add_deceased.dart';
import 'package:we_are_remebering/maindrawer.dart';
import 'package:we_are_remebering/pages/add_graveyard.dart';
import 'package:we_are_remebering/pages/add_tomb.dart';
import 'package:we_are_remebering/pages/homepage.dart';
import 'package:we_are_remebering/pages/search_page.dart';

class AddTombPage extends StatefulWidget {
  const AddTombPage({Key? key}) : super(key: key);

  @override
  State<AddTombPage> createState() => _AddTombPageState();
}

class _AddTombPageState extends State<AddTombPage>{

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
    AddTombPage()
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

              SizedBox(height: 1.625),

              // Icon
              Icon(
                Icons.info_outlined,
                size: 100,),

              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Graveyard name',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Place Nr.'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // Name textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last Name'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // Last name textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Birthday'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // Age textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Date of death',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              // Sex textfield

              SizedBox(height: 12.5),

              // sign in button
              Padding(
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
