import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

enum SearchCategory {
  users,
  graves,
  admins,
  graveyards,
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];
  String _errorMessage = '';

    Future<void> _performSearch(SearchCategory category) async {
    final connection = PostgreSQLConnection(
      'host',
      5432,
      'database',
      username: 'postgres',
      password: 'superultrapassword',
    );

    try {
      await connection.open();

      final searchTerm = _searchController.text;
      late String query;
      late Map<String, dynamic> substitutionValues;

      switch (category) {
        case SearchCategory.users:
          query = 'SELECT * FROM users_table WHERE column LIKE @searchTerm';
          substitutionValues = {'searchTerm': '%$searchTerm%'};
          break;
        case SearchCategory.graves:
          query = 'SELECT * FROM graves_table WHERE column LIKE @searchTerm';
          substitutionValues = {'searchTerm': '%$searchTerm%'};
          break;
        case SearchCategory.admins:
          query = 'SELECT * FROM admins_table WHERE column LIKE @searchTerm';
          substitutionValues = {'searchTerm': '%$searchTerm%'};
          break;
        case SearchCategory.graveyards:
          query = 'SELECT * FROM graveyards_table WHERE column LIKE @searchTerm';
          substitutionValues = {'searchTerm': '%$searchTerm%'};
          break;
      }

      final results = await connection.query(query, substitutionValues: substitutionValues);

      setState(() {
        _searchResults = results.map((row) => row.toColumnMap()).toList();
        _errorMessage = '';
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred while performing the search.';
      });
    } finally {
      await connection.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search term',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Select category'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                title: const Text('Users'),
                                onTap: () {
                                  _performSearch(SearchCategory.users);
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: const Text('Graves'),
                                onTap: () {
                                  _performSearch(SearchCategory.graves);
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: const Text('Admins'),
                                onTap: () {
                                  _performSearch(SearchCategory.admins);
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: const Text('Graveyards'),
                                onTap: () {
                                  _performSearch(SearchCategory.graveyards);
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: _errorMessage.isNotEmpty
                  ? Center(
                child: Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              )
                  : ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final result = _searchResults[index];
                  return ListTile(
                    title: Text(result['column1']),
                    subtitle: Text(result['column2']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}