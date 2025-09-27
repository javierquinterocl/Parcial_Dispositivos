import 'package:flutter/material.dart';
import 'package:parcial_uno_dispo/presentation/Screen/Text/Text.dart';
import 'package:parcial_uno_dispo/presentation/Screen/Radio/Radio.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
   int _indicador = 0;
  List<Widget> _elementos = <Widget>[
    TextScreen(),
    RadioScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: _elementos[_indicador],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (index) {
          setState(() {
            _indicador = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_decrease),
            label: "Texto",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            label: "Radio",
          ),
        ]
      ),
    );
  }
}