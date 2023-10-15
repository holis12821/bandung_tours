import 'package:bandung_tours/data/dummy_data.dart';
import 'package:bandung_tours/screen/home/home_card_view_item.dart';
import 'package:flutter/material.dart';

class HomeTourismPlaceList extends StatelessWidget {
  const HomeTourismPlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return HomeCardViewItem(place: DummyData.tourismPlaceList()[index]);
      },
      itemCount: DummyData.tourismPlaceList().length,
    );
  }
}
