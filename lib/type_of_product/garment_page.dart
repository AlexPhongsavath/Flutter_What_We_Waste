import 'package:final_project/const/const.dart';
import 'package:flutter/material.dart';
import '../product_detail_page.dart'; // Add this import

class GarmentPage extends StatelessWidget {
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
              'Garment',
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
                    title: 'T-shirt',
                    image: 'images/Shirt.png', // Update with your asset paths
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'T-shirt',
                            productImage: 'images/Shirt.png',
                            composition: '''
                              cotton 8.4Kg(CO2e)
                              Polyester 7.2Kg(CO2e)
                            ''',
                            packaging: '0.156Kg',
                            totalCarbon: '7.4Kg',
                            carbonFootprint: [
                              {'process': 'Wet treatment', 'footprint': '53%'},
                              {'process': 'Material', 'footprint': '26%'},
                              {'process': 'use', 'footprint': '8%'},
                              {'process': 'Confection', 'footprint': '7%'},
                              {'process': 'Knitting and Weaving', 'footprint': '3%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Pants',
                    image: 'images/Jean.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Pants',
                            productImage: 'images/Jean.png',
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
                    title: 'Skirt',
                    image: 'images/Skirt.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Skirt',
                            productImage: 'images/Skirt.png',
                            composition: '''
                              cotton 25.2Kg(CO2e)
                              Polyester 22.7Kg(CO2e)
                            ''',
                            packaging: '0.180Kg',
                            totalCarbon: '22Kg',
                            carbonFootprint: [
                              {'process': 'Knitting and Weaving', 'footprint': '75%'},
                              {'process': 'Wet treatment', 'footprint': '10%'},
                              {'process': 'Material', 'footprint': '3%'},
                              {'process': 'Confection', 'footprint': '5%'},
                              {'process': 'use', 'footprint': '7%'},
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ProductCard(
                    title: 'Handbag',
                    image: 'images/Bag.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Handbag',
                            productImage: 'images/Bag.png',
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
                    title: 'Shoes',
                    image: 'images/Shoes.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Shoes',
                            productImage: 'images/Shoes.png',
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
                    title: 'Hat',
                    image: 'images/Hat.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: 'Hat',
                            productImage: 'images/Hat.png',
                            composition: '''
                              polymer 70%
                              wool 30%
                              (total weight: 0.516 Kg)
                            ''',
                            packaging: '0.131Kg',
                            totalCarbon: '74.6Kg',
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
