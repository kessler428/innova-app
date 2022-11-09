import 'package:flutter/material.dart';

class HistoryOfBillScreen extends StatelessWidget {
   
  const HistoryOfBillScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de facturas'),
      ),
      body: Center(
         child: Text('HistoryOfBillScreen'),
      ),
    );
  }
}