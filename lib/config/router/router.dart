import 'package:flutter/material.dart';
import 'app_router.dart';
import 'package:parcial_uno_dispo/presentation/Screen/Screen.dart';



class Routers {
  static final List<AppRouter> appRoutes = [
    AppRouter(
      patch: '/',
      title: 'Home',
      icon: Icons.home,
      descripcion: 'Pantalla de inicio',
      builder: (context) => const HomeScreen(),
    ),

  ];

   static route() => {
    for (var pages in appRoutes) pages.patch: pages.builder
  };


}