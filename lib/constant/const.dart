import 'package:flutter/material.dart';
import '../model/drawer_mode.dart';
var myDrawer = Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/images/S2.JPG'
                ),
              )
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: DrawerModel.listDrawer.length,
                itemBuilder: (context, index) {
                  // DrawerModel drawerModel = DrawerModel(title: '',icon: Icons.abc);
                  // var data = drawerModel.listDrawer[index];
                  var data = DrawerModel.listDrawer[index];
                  return ListTile(
                    leading: Icon(
                      data.icon
                    ),
                    title: Text(
                      data.title
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );