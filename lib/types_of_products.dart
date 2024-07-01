import 'package:flutter/material.dart';
import 'garment_page.dart'; // Add this import

class TypesOfProductsPage extends StatelessWidget {
  const TypesOfProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Types of Products'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ProductCard(
            title: 'Garment',
            image: Icons.checkroom,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GarmentPage()),
              );
            },
          ),
          const ProductCard(
            title: 'Food & Beverage',
            image: Icons.restaurant,
          ),
          const ProductCard(
            title: 'Stationery',
            image: Icons.edit,
          ),
          const ProductCard(
            title: 'Electronic Appliance',
            image: Icons.flashlight_on,
          ),
          const ProductCard(
            title: 'Plastic',
            image: Icons.recycling,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final IconData image;
  final VoidCallback? onTap;

  const ProductCard(
      {super.key, required this.title, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(image, size: 50.0, color: Colors.teal),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}
