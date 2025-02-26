// ignore: file_names
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Notifications'),
                    content: Text('You have 3 Notifications'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
        toolbarHeight: 60,
        backgroundColor: Colors.black,
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  var data = [
    {"id": 1, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 2, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 3, "todo": "Watch a classic movie", "completed": true, "userId": 68},
    {"id": 4, "todo": "Watch a documentary", "completed": false, "userId": 84},
    {"id": 5, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 6, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 7, "todo": "Watch a classic movie", "completed": true, "userId": 68},
    {"id": 8, "todo": "Watch a documentary", "completed": false, "userId": 84},
    {"id": 9, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 10, "todo": "Memorize a poem", "completed": true, "userId": 13},
    {"id": 11, "todo": "Watch a classic movie", "completed": true, "userId": 68},
    {"id": 12, "todo": "Watch a documentary", "completed": false, "userId": 84},
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
      // Adjust based on available space
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            var item = data[index];
            return Container(
              key: ValueKey(item['id']),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['todo'] as String,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(
                    item['completed'] as bool ? 'Completed' : 'Not Completed',
                    style: TextStyle(color: item['completed'] as bool ? Colors.green : Colors.red),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
