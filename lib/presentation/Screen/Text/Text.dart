import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  String? _musica;
  bool _favorito = false;

  void send() {
    print(_nameController.text);
    _nameController.clear();
    print(_musica);
    print(_favorito);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Nombre",
                  icon: Icon(Icons.person),
                ),
              ),
              DropdownButtonFormField<String>(
                initialValue: _musica,
                items: [
                  DropdownMenuItem(value: "1", child: Text("Metallica")),
                  DropdownMenuItem(value: "2", child: Text("Nirvana")),
                  DropdownMenuItem(value: "3", child: Text("Pink Floyd")),
                  DropdownMenuItem(value: "4", child: Text("Queen")),
                ],
                onChanged: (value) {
                  setState(() {
                    _musica = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Banda",
                  icon: Icon(Icons.music_note),
                ),
              ),

              SwitchListTile(
                value: _favorito,
                
                secondary: const Icon(
                  Icons.favorite,
                  color: Colors.red
                ),
                onChanged: (value) {
                  setState(() {
                    _favorito = value;
                  });
                },
                title: Text("Favorito"),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: send, child: Text("Enviar")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}