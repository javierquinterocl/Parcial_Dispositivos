import 'package:flutter/widgets.dart';

class AppRouter {
  final String patch;
  final String title; 
  final IconData icon;
  final String descripcion;
  final WidgetBuilder builder;

  AppRouter({
    required this.patch,
    required this.title,
    required this.icon,
    required this.descripcion,
    required this.builder,
  });
}