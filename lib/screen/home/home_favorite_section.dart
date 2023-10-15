import 'package:flutter/material.dart';

class HomeFavoriteSection extends StatefulWidget {
  const HomeFavoriteSection({super.key});

  @override
  State<HomeFavoriteSection> createState() => _HomeFavoriteSectionState();
}

class _HomeFavoriteSectionState extends State<HomeFavoriteSection> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.black,
      ),
    );
  }
}
