import 'package:flutter/material.dart';

class PixelDetailScreen extends StatelessWidget{
  const PixelDetailScreen({super.key});

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
        title: Text('Pixel'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Pixel 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          Text(
            'Pixel 1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text('Google Pixel is the most featureful phone ever.'),

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
