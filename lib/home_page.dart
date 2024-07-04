import 'package:final_project/const/const.dart';
import 'package:flutter/material.dart';
import 'types_of_products.dart'; // Add this import
// import 'information_environment/environment_climate_change_page.dart'; // Add this import

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      drawer: Drawer(
        backgroundColor: ConstantColor.colorMain,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: ConstantColor.colorMain,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 25.0), // Add horizontal padding(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 38,
                          color: ConstantColor.backgroundColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: ConstantColor.backgroundColor,
              ),
              title: const Text(
                'Main',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColor.backgroundColor,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(), // Add divider here
            ListTile(
              leading: const Icon(
                Icons.category,
                color: ConstantColor.backgroundColor,
              ),
              title: const Text(
                'Types of Products',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColor.backgroundColor,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TypesOfProductsPage()),
                );
              },
            ),
            const Divider(), // Add divider here
            ListTile(
              leading: const Icon(
                Icons.data_usage,
                color: ConstantColor.backgroundColor,
              ),
              title: const Text(
                'Data about Environment & Climate Change',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColor.backgroundColor,
                ),
              ),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             const EnvironmentClimateChangePage()),
              //   );
              // },
            ),
            const Divider(), // Add divider here
            ListTile(
              leading: const Icon(
                Icons.contact_mail,
                color: ConstantColor.backgroundColor,
              ),
              title: const Text(
                'Contact',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColor.backgroundColor,
                ),
              ),
              onTap: () {},
            ),
            const Divider(), // Add divider here
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 325,
                  child: Image.asset('images/homepage.png'),
                ),
                Positioned(
                  top:
                      100, // Adjust this value to position it vertically as needed
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          'What We Waste',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: ConstantColor.backgroundColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'How Much Pollution We Produce?',
                          style: TextStyle(
                            fontSize: 16,
                            color: ConstantColor.backgroundColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ConstantColor.backgroundColor,
                              textStyle: const TextStyle(
                                color: ConstantColor.colorMain,
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TypesOfProductsPage()),
                            );
                          },
                          child: const Text(
                            'Click here',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: ConstantColor.colorMain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: ConstantColor.colorMain,
                    width: 2.0, // Set the border width
                  ),
                ),
                padding: const EdgeInsets.all(8.0), // Optional: add padding
                child: const Text(
                  'Our Objective',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: ConstantColor.colorMain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: ConstantColor.colorSencondary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        '> This application is created to help raise awareness for communities on climate change crisis.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Image.asset('images/home1.png'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 6,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ConstantColor.colorSencondary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('images/home2.png'),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'We share information about pollution we create in daily activities and lifestyles.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
