import 'package:flutter/material.dart';

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Image.network(
              'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
              height: 180,
            ),
            const SizedBox(height: 16),
            const Text(
              'All your favorites',
              style: TextStyle(
                fontSize: 24,
                fontWeigh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}