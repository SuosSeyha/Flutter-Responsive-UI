import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DrawerModel{
  
 final String title;
 final IconData icon;
 DrawerModel({
  required this.title,
  required this.icon
 });
 static List<DrawerModel> listDrawer=[
  DrawerModel(
    title: 'H O M E', 
    icon: Icons.home
  ),
  DrawerModel(
    title: 'E X P L O R E', 
    icon: Icons.explore
  ),
  DrawerModel(
    title: 'S H O P P I N G C A R D', 
    icon: Icons.shopping_cart
  ),
  DrawerModel(
    title: 'S E T T I N G S', 
    icon: Icons.settings
  ),
  DrawerModel(
    title: 'L O G O U T', 
    icon: Icons.logout
  ),
 ];

}