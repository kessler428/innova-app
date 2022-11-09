import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'login');
              },
              icon: const Icon(Icons.logout),
              color: Colors.white)
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: const [
            _InfoCards(
              color: Color.fromARGB(255, 231, 209, 8),
              titulo: 'Facturas del dia',
              subtitulo: '16',
              icon: Icons.receipt_long,
              ruta: 'history',
            ),
            SizedBox(height: 12),
            _InfoCards(
              color: Color.fromARGB(255, 202, 6, 6),
              titulo: 'Dinero en caja',
              subtitulo: 'C\$ 1,000.00',
              icon: Icons.money,
              ruta: '/',
            ),
            SizedBox(height: 12),
            _InfoCards(
              color: Color.fromARGB(255, 8, 79, 231),
              titulo: 'Producto mas vendido',
              subtitulo: 'Coca Cola',
              icon: Icons.sell_outlined,
              ruta: 'inventory',
            ),
            SizedBox(height: 12),
            _InfoCards(
              color: Color.fromARGB(255, 4, 172, 26),
              titulo: 'Realizar una factura',
              subtitulo: 'Realizar una factura',
              icon: Icons.add,
              ruta: 'create',
            )
          ],
        ));
  }
}

class _InfoCards extends StatelessWidget {

  final Color color;
  final String titulo;
  final String subtitulo;
  final IconData icon;
  final String? ruta;

  const _InfoCards({
    Key? key,
    required this.color,
    required this.titulo,
    required this.subtitulo,
    required this.icon,
    this.ruta
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon( icon,
            color: Colors.white, size: 35),
        title: Text( titulo ,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,)),
        subtitle: Text( subtitulo ,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white)),
        trailing:
            const Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: () {
          Navigator.pushNamed(context, ruta!);
        },
      ),
    );
  }
}
