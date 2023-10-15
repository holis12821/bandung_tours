import 'package:bandung_tours/screen/home/home_card.dart';
import 'package:flutter/material.dart';

class HomeTourismPlaceGrid extends StatelessWidget {
  const HomeTourismPlaceGrid({
    super.key,
    required this.gridCount,
  });

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: HomeCard(gridCount: gridCount),
    );
  }
}
