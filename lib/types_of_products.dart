import 'package:final_project/const/const.dart';
import 'package:final_project/type_of_product/electronic_appliance.dart';
import 'package:final_project/type_of_product/food_beverage.dart';
import 'package:final_project/type_of_product/garment_page.dart';
import 'package:final_project/type_of_product/plastic.dart';
import 'package:final_project/type_of_product/stationery.dart';
import 'package:flutter/material.dart';

class TypesOfProductsPage extends StatelessWidget {
  const TypesOfProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: ConstantColor.backgroundColor,
        title: Image.asset('images/logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Text(
              'Type of Products',
              style: TextStyle(
                fontSize: 30,
                color: ConstantColor.colorMain,
              ),
            ),
          ),
          ProductCard(
            title: 'Garment',
            image: 'images/Garment.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GarmentPage()),
              );
            },
          ),
          ProductCard(
            title: 'Food & Beverage',
            image: 'images/Food.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodPage()),
              );
            },
          ),
          ProductCard(
            title: 'Stationery',
            image: 'images/Stationery.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StationeryPage()),
              );
            },
          ),
          ProductCard(
            title: 'Electronic Appliance',
            image: 'images/Electronic.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ElectronicPage()),
              );
            },
          ),
          ProductCard(
            title: 'Plastic',
            image: 'images/Plastic.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlasticPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback? onTap;

  const ProductCard(
      {super.key, required this.title, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: Card(
        color: ConstantColor.colorMain,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: ClipRRect(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 70,
              height: 70,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}