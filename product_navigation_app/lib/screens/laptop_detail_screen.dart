import 'package:flutter/material.dart';

class LaptopDetailScreen extends StatelessWidget {
  const LaptopDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptop'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.green,
            child: Center(
              child: Text(
                'Laptop',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          Text(
            'Laptop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text('Laptop is the most productive development tool.'),

          SizedBox(height: 20),

          Text(
            'Price: 2000',
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => const Icon(
                Icons.star_border,
                color: Colors.red,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}