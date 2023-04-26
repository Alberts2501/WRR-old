import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          SizedBox(height: 80),
          Text(
            'Relatives',
            style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 170,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
            },
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  child: Center(child: Text('$index'),),
                );
              }
            ),
          ),
          SizedBox(height: 1),
          Text(
            'Familiar',
            style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 170,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(12),
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                    width: 150,
                    height: 150,
                    child: Center(child: Text('$index'),),
                  );;
                }
            ),
          ),
          SizedBox(height: 1),
          Text(
            'Deads',
            style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 170,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(12),
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                    width: 150,
                    height: 150,
                    child: Center(child: Text('$index'),),
                  );;
                }
            ),
          ),
        ],
      ),
    );
  }
}
