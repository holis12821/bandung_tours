import 'package:bandung_tours/screen/home/home_tourism_place_grid.dart';
import 'package:bandung_tours/screen/home/home_tourism_place_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const HomeTourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return const HomeTourismPlaceGrid(gridCount: 4);
          } else {
            return const HomeTourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
