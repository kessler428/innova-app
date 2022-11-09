import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
   
  const InventoryScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario'),
      ),
      body: Center(
         child: Text('InventoryScreen'),
      ),
    );
  }
}