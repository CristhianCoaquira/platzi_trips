import 'package:flutter/material.dart';
import 'package:platzi_trips/description_place.dart';
import 'package:platzi_trips/header_appbar.dart';
import 'package:platzi_trips/review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            DescriptionPlace(
                namePlace: "Bahamas",
                stars: 4,
                descriptionPlace: "Beautiful Place to visit alone"
            ),
            ReviewList(),
          ],
        ),
        const HeaderAppbar(),
      ],
    );
  }
}
