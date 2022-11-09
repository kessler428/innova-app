import 'package:flutter/material.dart';

class CreateBillScreen extends StatelessWidget {
   
  const CreateBillScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear factura'),
      ),
      body: Center(
         child: Text('BillScreen'),
      ),
    );
  }
}