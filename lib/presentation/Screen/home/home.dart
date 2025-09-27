import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcial_uno_dispo/config/router/router.dart';
import 'package:parcial_uno_dispo/presentation/providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = ref.watch(modoOscuroProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parcial Home"),
        backgroundColor: Colors.redAccent,
        actions: [
          SizedBox(width: 50,),
          FloatingActionButton(onPressed: () {
            ref.read(modoOscuroProvider.notifier).state = !ref.read(modoOscuroProvider);
          }, child: Icon(!dark ? Icons.dark_mode : Icons.light_mode))
        ],
      )
      ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Bienvenido a la pantalla de inicio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 20),
            Text("Presentado por: \n" "Javier Quintero 192163 \n" "Juan Jose Garcia Torres 192102", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ...Routers.appRoutes.map((e){
              return ListTile(
                title: Text(e.title),
                subtitle: Text(e.descripcion),
                leading: Icon(e.icon),
                onTap: (){
                  Navigator.pushNamed(context, e.patch);
                },
              );
            })
          ],
        )
      ),
    );
  }
}