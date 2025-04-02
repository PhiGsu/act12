import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(InventoryApp());
}

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InventoryHomePage(title: 'Inventory Home Page'),
    );
  }
}

class InventoryHomePage extends StatefulWidget {
  const InventoryHomePage({super.key, required this.title});

  final String title;

  @override
  _InventoryHomePageState createState() => _InventoryHomePageState();
}

class _InventoryHomePageState extends State<InventoryHomePage> {
// TODO: Implement Firestore integration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Inventory Management System',
            ),

// TODO: Implement inventory list view
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
// TODO: Implement add inventory item
        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}

// id string
// name string
// amount double

class Product {
  final String id;
  final String name;
  final num price;

  Product({required this.id, required this.name, required this.price});
}