import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController _searchQueryController = TextEditingController();

  String _searchQuery = '';

  List<String> _data = [];

  List<String> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData = _data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: TextField(
          controller: _searchQueryController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
              _filteredData = _data
                  .where((element) => element.toLowerCase().contains(_searchQuery.toLowerCase()))
                  .toList();
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _searchQueryController.clear();
                _searchQuery = '';
                _filteredData = _data;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_filteredData[index]),
          );
        },
      ),
    );
  }
}