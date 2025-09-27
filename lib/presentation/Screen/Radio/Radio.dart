import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {

  String _generoMusical = "Metallica";
  String _generoMovil = "Aventura";
  String _generoHorror = "Terror";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selecciona tu genero musical favorito"),
            RadioListTile(
              title: Text("Metallica"),
              value: "Metallica",
              groupValue: _generoMusical,
              onChanged: (value) {
                setState(() {
                  _generoMusical = value ?? "";
                });
              },
            ),
            RadioListTile(
              title: Text("Pop"),
              value: "Pop",
              groupValue: _generoMusical,
              onChanged: (value) {
                setState(() {
                  _generoMusical = value ?? "";
                });
              },
            ),

            const Text("Checkbox"),
            CheckboxListTile(
              title: Text("Aventura"),
              value: _generoMovil == "Aventura",
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    _generoMovil = "Aventura";
                  } else {
                    _generoMovil = "";
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text("Terror"),
              value: _generoHorror == "Terror",
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    _generoHorror = "Terror";
                  } else {
                    _generoHorror = "";
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}