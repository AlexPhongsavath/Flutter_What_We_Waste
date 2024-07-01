import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final String composition;
  final String packaging;
  final List<Map<String, String>> carbonFootprint;

  ProductDetailPage({
    required this.productName,
    required this.productImage,
    required this.composition,
    required this.packaging,
    required this.carbonFootprint,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factors'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  '**this is a study on specific types and brands of products, not an exact or average data of all products**',
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    productImage,
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Composition of Thread',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(composition),
                        SizedBox(height: 8),
                        Text('packaging: $packaging'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              DataTable(
                columns: [
                  DataColumn(label: Text('Process')),
                  DataColumn(label: Text('Carbon Footprint')),
                ],
                rows: carbonFootprint
                    .map(
                      (entry) => DataRow(
                        cells: [
                          DataCell(Text(entry['process']!)),
                          DataCell(Text(entry['footprint']!)),
                        ],
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 16),
              Text(
                'Total Carbon Footprint Created: 15.2 kg', // You may want to pass this data as well
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
