import 'package:flutter/material.dart';
import '../product_detail_page.dart'; // Add this import

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Products'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text('Sort by'),
              items: <String>['Price', 'Name', 'Category'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ProductCard(
                    title: 'T-shirt',
                    image: 'assets/tshirt.png', // Update with your asset paths
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'T-shirt',
                            productImage: 'assets/tshirt.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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
                    title: 'Pants',
                    image: 'assets/pants.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Pants',
                            productImage: 'assets/pants.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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
                    title: 'Skirt',
                    image: 'assets/skirt.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Skirt',
                            productImage: 'assets/skirt.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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
                    title: 'Handbag',
                    image: 'assets/handbag.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Handbag',
                            productImage: 'assets/handbag.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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
                    title: 'Shoes',
                    image: 'assets/shoes.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Shoes',
                            productImage: 'assets/shoes.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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
                    title: 'Hat',
                    image: 'assets/hat.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Hat',
                            productImage: 'assets/hat.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
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

  ProductCard({required this.title, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
