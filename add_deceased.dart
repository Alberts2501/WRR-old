import 'package:flutter/material.dart';
import 'package:we_are_remebering/pages/add_deceased_part_2.dart';
import 'package:we_are_remebering/pages/add_graveyard.dart';
import 'package:we_are_remebering/pages/add_tomb.dart';
import 'package:we_are_remebering/pages/homepage.dart';
import 'package:we_are_remebering/pages/search_page.dart';
import 'package:we_are_remebering/FormData.dart';

class AddDeceasedPage extends StatefulWidget {
  const AddDeceasedPage({Key? key}) : super(key: key);

  @override
  State<AddDeceasedPage> createState() => _AddDeceasedPageState();
}

class _AddDeceasedPageState extends State<AddDeceasedPage>{

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
                      MaterialPageRoute(
                          builder: (context) => AddDeceasedPage()));
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
                          hintText: 'Name',
                      ),
                      },
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
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Last name'
                      ),
                      onChanged: (value) {
                        formData.lastName = value;
                      },
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
                          hintText: 'Personal code'
                      ),
                      onChanged: (value) {
                        formData.personalCode = value;
                      },
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
                      onChanged: (value) {
                        formData.birthday = value;
                      },
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
                      onChanged: (value) {
                        formData.dateOfDeath = value;
                      },
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
                      MaterialPageRoute(builder: (context) => AddDeceasedPagePart2()));
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
