import 'package:flutter/material.dart';
import 'package:parcial_uno_dispo/config/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Parcial Home"),
        backgroundColor: Colors.redAccent,
      )
      ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: const [
            Text("Bienvenido a la pantalla de inicio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Text("Presentado por: Javier Quintero 192163 \n " "Juan Jose Garcia Torres 1921 nose", style: TextStyle(fontWeight: FontWeight.bold),),

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