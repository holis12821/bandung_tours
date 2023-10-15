import 'package:bandung_tours/data/dummy_data.dart';
import 'package:bandung_tours/model/tourism_place.dart';
import 'package:bandung_tours/screen/tours_detail/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.gridCount,
  });

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: DummyData.tourismPlaceList().map(
        (place) {
          return InkWell(
            onTap: () {
              navigate(context, place);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      bottom: 8,
                    ),
                    child: Text(place.location),
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void navigate(BuildContext context, TourismPlace place) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(place: place);
        },
      ),
    );
  }
}
