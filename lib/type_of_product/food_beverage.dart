import 'package:final_project/const/const.dart';
import 'package:flutter/material.dart';
import '../product_detail_page.dart'; // Add this import

class FoodPage extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
            child: Text(
              'Food & Beverage',
              style: TextStyle(
                fontSize: 30,
                color: ConstantColor.colorMain,
              ),
            ),
          ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ProductCard(
                    title: 'Salad',
                    image: 'images/Salad.png', // Update with your asset paths
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Salad',
                            productImage: 'images/Salad.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Mango',
                    image: 'images/Mango.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Mango',
                            productImage: 'images/Mango.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Water',
                    image: 'images/Water.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Water',
                            productImage: 'images/Water.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Coffee',
                    image: 'images/Coffee.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Coffee',
                            productImage: 'images/Coffee.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Milk',
                    image: 'images/Milk.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Milk',
                            productImage: 'images/Milk.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Tomato',
                    image: 'images/Tomato.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Tomato',
                            productImage: 'images/Tomato.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '15.2Kg',
                            carbonFootprint: [
                              {'process': 'raw material preparing', 'footprint': '75%'},
                              {'process': 'manufacturing', 'footprint': '10%'},
                              {'process': 'transportation', 'footprint': '3%'},
                              {'process': 'customer usage', 'footprint': '5%'},
                              {'process': 'disposal / recycle', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback? onTap;

  ProductCard({required this.title, required this.image, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ConstantColor.colorMain,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}