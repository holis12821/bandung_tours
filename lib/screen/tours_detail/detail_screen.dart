import 'package:bandung_tours/model/tourism_place.dart';
import 'package:bandung_tours/screen/tours_detail/detail_mobile_screen.dart';
import 'package:bandung_tours/screen/tours_detail/detail_web_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.place,
  });

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 800) {
          return DetailWebScreen(place: place);
        } else {
          return DetailMobileScreen(place: place);
        }
      },
    );
  }
}
