import 'package:final_project/const/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final String composition;
  final String packaging;
  final List<Map<String, String>> carbonFootprint;
  final String totalCarbon;

  const ProductDetailPage({
    super.key,
    required this.productName,
    required this.productImage,
    required this.composition,
    required this.packaging,
    required this.carbonFootprint,
    required this.totalCarbon,
  });

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Column(
                children: [
                  const Text(
                    'Factor',
                    style: TextStyle(
                      fontSize: 30,
                      color: ConstantColor.colorMain,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '**this is a study on specific types and brands of products, not an exact or average data of all products**',
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color:
                          ConstantColor.colorMain, // Background color for cells
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust the radius as needed
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      productImage,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Composition of Thread',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(composition),
                        const SizedBox(height: 8),
                        Text(
                          'packaging: $packaging',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                productName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              DataTable(
                columns: const [
                  DataColumn(label: Text('Process')),
                  DataColumn(label: Text('Carbon Footprint')),
                ],
                rows: carbonFootprint
                    .map(
                      (entry) => DataRow(
                        cells: [
                          DataCell(Container(
                            color: ConstantColor
                                .colorSencondary, // Background color for cells
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              entry['process']!,
                              style: TextStyle(color: ConstantColor.colorMain),
                            ),
                          )),
                          // DataCell(Text(entry['process']!)),
                          // DataCell(Text(entry['footprint']!)),
                          DataCell(Container(
                            //color: Colors.teal[100], // Background color for cells
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              entry['footprint']!,
                              style: TextStyle(color: ConstantColor.colorMain),
                            ),
                          )),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 40),
              Container(
                color:
                    ConstantColor.colorSencondary, // Background color for cells
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Total Carbon Footprint Created: ${totalCarbon}', // You may want to pass this data as well
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ConstantColor.colorMain),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
