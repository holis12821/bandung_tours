import 'package:bandung_tours/model/tourism_place.dart';
import 'package:bandung_tours/screen/tours_detail/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeCardViewItem extends StatelessWidget {
  const HomeCardViewItem({super.key, required this.place});

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigate(context),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(place.imageAsset),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        place.name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(place.location),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => DetailScreen(place: place)),
      ),
    );
  }
}
