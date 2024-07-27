import 'package:flutter/material.dart';

class DoorStep extends StatelessWidget {
  const DoorStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            '../assets/images/logo.png', // Ensure this path is correct
            width: 200,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 187, 187, 187),
        automaticallyImplyLeading:
            false, // To center title without a leading widget
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  '../assets/images/headerall.jpg', // Ensure this path is correct
                  width: double.infinity,
                  height: 200, // Adjust height as needed
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 75, // Adjust as needed
                  left: 10, // Adjust as needed
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    // color: Colors.black.withOpacity(0.5), // Semi-transparent background
                    child: Text(
                      'Doorstep',
                      style: TextStyle(
                        fontSize: 24, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add spacing after the image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, 'jerrycan');
                      },
                      icon: Icon(Icons.local_gas_station),
                      // label: Text('Jerry Can'),
                      label: Padding(
                        padding: const EdgeInsets.all(
                            20.0), // Adjust padding as needed
                        child: Text('Jerry Can'),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            double.infinity, 50), // Make button take full width
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between buttons
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, 'bulkorder');
                      },
                      icon: Icon(Icons.shopping_cart),
                      // label: Text('Bulk Order'),
                      label: Padding(
                        padding: const EdgeInsets.all(
                            20.0), // Adjust padding as needed
                        child: Text('Bulk Order'),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            double.infinity, 50), // Make button take full width
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add spacing before the footer image
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DoorStep(),
    routes: {
      'jerrycan': (context) => JerryCanPage(), // Define your JerryCanPage here
      'bulkorder': (context) =>
          BulkOrderPage(), // Define your BulkOrderPage here
    },
  ));
}

// Placeholder for JerryCanPage, replace with your actual JerryCanPage implementation
class JerryCanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jerry Can'),
      ),
      body: Center(
        child: Text('Jerry Can Page Content'),
      ),
    );
  }
}

// Placeholder for BulkOrderPage, replace with your actual BulkOrderPage implementation
class BulkOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bulk Order'),
      ),
      body: Center(
        child: Text('Bulk Order Page Content'),
      ),
    );
  }
}
