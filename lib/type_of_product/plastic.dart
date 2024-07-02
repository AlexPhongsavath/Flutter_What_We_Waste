import 'package:final_project/const/const.dart';
import 'package:flutter/material.dart';
import '../product_detail_page.dart'; // Add this import

class PlasticPage extends StatelessWidget {
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
              'Plastic',
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
                    title: 'Water bottle',
                    image: 'images/Bottle.png', // Update with your asset paths
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Water bottle',
                            productImage: 'images/Bottle.png',
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
                    title: 'Straw',
                    image: 'images/Straw.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Straw',
                            productImage: 'images/Straw.png',
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
                    title: 'Plastic bag',
                    image: 'images/Plastic_Bag.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Plastic bag',
                            productImage: 'images/Plastic_Bag.png',
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
                    title: 'Trash bag',
                    image: 'images/Trash_Bag.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Trash bag',
                            productImage: 'images/Trash_Bag.png',
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
                    title: 'Food container',
                    image: 'images/Food_Container.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Food container',
                            productImage: 'images/Food_Container.png',
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
                    title: 'Film',
                    image: 'images/Film.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Film',
                            productImage: 'images/Film.png',
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