import 'package:flutter/material.dart';

class TabletDetailScreen extends StatelessWidget{
  const TabletDetailScreen({super.key});

  Widget buildStars(bool filled) {
    return Row(
      children: List.generate(
        3,
        (index) => Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.yellowAccent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tablet'),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.yellowAccent,
            child: Center(
              child: Text(
                'Tablet 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          Text(
            'Tablet 1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text('Google Tablet is the most featureful tablet ever.'),

          SizedBox(height: 20),

          Text(
            'Price: 1500',
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
