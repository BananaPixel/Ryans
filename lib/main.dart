import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Untuk mengubah status bar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.blue,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailScreen(),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samsung Galaxy S23'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 16),
            Text(
              'Samsung Galaxy S23',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(height: 16),
            Text(
              'The Samsung Galaxy S23 is the latest flagship smartphone from Samsung, '
              'offering cutting-edge features like a powerful Snapdragon 8 Gen 2 chipset, '
              '120Hz Dynamic AMOLED display, and top-tier camera capabilities.',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(height: 16),
            Text(
              'Spesifikasi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildSpecItem('Chipset', 'Snapdragon 8 Gen 2'),
            _buildSpecItem('RAM', '8 GB'),
            _buildSpecItem('Storage', '128 GB'),
            _buildSpecItem('Display', '6.1-inch Dynamic AMOLED 2X'),
            _buildSpecItem('Camera', '50 MP (Main), 12 MP (Ultra-wide), 10 MP (Telephoto)'),
            _buildSpecItem('Battery', '3900 mAh'),
            _buildSpecItem('Operating System', 'Android 13'),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(height: 16),
            Text(
              'Harga: \$999',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check, color: Colors.blue),
          SizedBox(width: 10),
          Text('$label: $value', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
