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
    AppRouter(
      patch: '/form',
      title: 'Form',
      icon: Icons.list,
      descripcion: 'Formulario',
      builder: (context) => const FormScreen(),
    ),
    AppRouter(
      patch: '/peticion',
      title: 'Peticion',
      icon: Icons.http,
      descripcion: 'Api de Dragon Ball',
      builder: (context) => const PeticionScreen(),
    ),
    

  ];

   static route() => {
    for (var pages in appRoutes) pages.patch: pages.builder
  };


}