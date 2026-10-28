import 'package:flutter/material.dart';

class Task2Screen extends StatelessWidget {
  Task2Screen({super.key});

  final List<Map<String, dynamic>> dummyOrders = [
    {
      'id': 32053,
      'category': 'Breakfast',
      'title': 'Chicken Thai Biriyani',
      'price': 60,
      'imageUrl': 'https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=500&q=80',
      'status': 'pending',
    },
    {
      'id': 32054,
      'category': 'Lunch',
      'title': 'Beef Burger with Fries',
      'price': 45,
      'imageUrl': 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80',
      'status': 'pending',
    },
    {
      'id': 32055,
      'category': 'Dinner',
      'title': 'Creamy Pasta Carbonara',
      'price': 55,
      'imageUrl': 'https://images.unsplash.com/photo-1612874742237-6526221588e3?auto=format&fit=crop&w=500&q=80',
      'status': 'pending',
    },
    {
      'id': 32056,
      'category': 'Dessert',
      'title': 'Berry Pancake Special',
      'price': 30,
      'imageUrl': 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?auto=format&fit=crop&w=500&q=80',
      'status': 'pending',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final firstOrder = dummyOrders[0];

    return Scaffold(
      appBar: AppBar(title: const Text('Food Order List')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              firstOrder['imageUrl'],
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '#${firstOrder['category']}',
                  style: const TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  firstOrder['title'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'ID: ${firstOrder['id']}',
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                ),
                const SizedBox(height: 4),
                Text('\$${firstOrder['price']}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
