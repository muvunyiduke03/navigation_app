import 'package:flutter/material.dart';
import 'screens/pixel_detail_screen.dart';
import 'screens/tablet_detail_screen.dart';
import 'screens/pendrive_detail_screen.dart';
import 'screens/floppydrive_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildStars(bool filled) {
    return Row(
      children: List.generate(
        3,
        (index) => Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          //Pixel 1
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PixelDetailScreen()),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 180,
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        'Pixel 1',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pixel 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Google Pixel is the most featureful \nphone ever.'),
                      Text('Price: 800'),
                      buildStars(false),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Laptop
          Card(
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 180,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Laptop',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laptop',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Laptop is the most productive \ndevelopment tool.'),
                    Text('Price: 2000'),
                    buildStars(false),
                  ],
                ),
              ],
            ),
          ),

          //Tablet
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabletDetailScreen()),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 180,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        'Tablet',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tablet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Tablet is the most useful device \never for meeting.',
                      ),
                      Text('Price: 1500'),
                      buildStars(true),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Pendrive
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PendriveDetailScreen()),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 180,
                  color: const Color.fromARGB(255, 153, 47, 21),
                  child: Center(
                    child: Text(
                      'Pen drive',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pendrive',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('iPhone is the stylist phone ever.'),
                    Text('Price: 100'),
                    buildStars(false),
                  ],
                ),
              ],
            ),
          ),
          ),

          //Floppy drive
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FloppyDriveDetailScreen()),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 180,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        'Floppy Drive',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Floppy Drive',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Floppy Drive is a classic storage \ndevice from the past.'),
                      Text('Price: 20'),
                      buildStars(false),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}
