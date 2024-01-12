import 'package:flutter/material.dart';
import 'package:flutter_horaios_web/constant/const.dart';
class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'T A B L E T'
        ),
      ),
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio:4,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5
              ), 
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3
                  ),
                  height: 80,
                  width: double.infinity,
                  color: Colors.grey,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}