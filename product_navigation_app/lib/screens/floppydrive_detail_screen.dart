import 'package:flutter/material.dart';

class FloppyDriveDetailScreen extends StatelessWidget{
  const FloppyDriveDetailScreen({super.key});

  Widget buildStars(bool filled) {
    return Row(
      children: List.generate(
        3,
        (index) => Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.tealAccent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floppy Drive'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.tealAccent,
            child: Center(
              child: Text(
                'Floppy Drive 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          Text(
            'Floppy Drive 1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text('Floppy Drive is the most useful device \n ever for data storage.'),

          SizedBox(height: 20),

          Text(
            'Price: 800',
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3, 
            (index) => const Icon(
              Icons.star_border,
              color: Colors.teal,
              size: 50,
            ),
          ),
        ),
        ],
      ),
    );
  }
}
