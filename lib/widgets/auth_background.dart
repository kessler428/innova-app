import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {

  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [

          _PurpleBox(),
          _header(),
          this.child,

        ],
      ),
    );
  }
}

class _header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin:  EdgeInsets.only(top: 30.0),
        child: Column(children:  [
          Icon(Icons.shop, color: Colors.white, size: 100.0),
          SizedBox(height: 10.0, width: double.infinity),
          Text('Mi tienda', style: TextStyle(color: Colors.white, fontSize: 25.0)),
        ]),
      )
    );
  }
}

class _PurpleBox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackround(),
    );
  }

  BoxDecoration _purpleBackround() => BoxDecoration(
    gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 0, 43, 136),
          Color.fromARGB(255, 90, 4, 148),
        ],
      ),
  );
}