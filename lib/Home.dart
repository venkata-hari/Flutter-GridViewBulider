import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Logo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Notification'),
                    content: Text('You have 5 Notifications'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Close',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },

            icon: Icon(Icons.notification_add, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout, color: Colors.white),
          ),
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  var data = [
    {'id': 1, 'name': 'India'},
    {'id': 2, 'name': 'China'},
    {'id': 3, 'name': 'Pakistan'},
    {'id': 4, 'name': 'USA'},
    {'id': 5, 'name': 'Japan'},
    {'id': 6, 'name': 'Australia'},
    {'id': 7, 'name': 'Kenya'},
    {'id': 8, 'name': 'Finland'},
    {'id': 9, 'name': 'Norway'},
    {'id': 10, 'name': 'Russia'},
    {'id': 11, 'name': 'Srilanka'},
    {'id': 12, 'name': 'Nepal'},
    {'id': 13, 'name': 'Afganistan'},
    {'id': 9, 'name': 'Ukrian'},
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder:
                  (context, index) => Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.all(2),
                    child: Row(
                      children: [
                        Text(
                          data[index]['name'] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                childAspectRatio: 2,
                crossAxisCount: 2,
              ),
              itemCount: data.length,
              itemBuilder:
                  (context, index) => Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(color: ((data[index]['id'] as int) % 2 != 0 )? Colors.blue : Colors.red),
                    child: Column(
                   crossAxisAlignment:CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child:Align(
                            alignment: Alignment.centerRight,
                          child:Text(
                            data[index]['name'] as String,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ))),
                          Expanded(child:Align(
                            alignment: Alignment.centerLeft,
                          child:Text(data[index]['name'] as String,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),))), 
                           Expanded(child:Align(
                          alignment:Alignment.center,
                          child:Text(data[index]['name'] as String,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),))),
                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
