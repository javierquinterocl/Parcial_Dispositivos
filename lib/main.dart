import 'package:flutter/material.dart';
import 'package:parcial_uno_dispo/config/router/app_router.dart';
import 'package:parcial_uno_dispo/config/router/router.dart';
import 'package:parcial_uno_dispo/config/theme/theme.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ) {
    return MaterialApp(
      
      initialRoute: '/',
      routes: Routers.route(),
      theme: AppTheme().getTheme(),

    );
  }
}