import 'package:flutter/material.dart';
import 'package:platzi_trips/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(5, (index) =>
        const Review(
          pathImage: "assets/img/people.jpg",
          userNameText: "Cristhian Coaquira",
          reviewDetails: "3 review 2 photos",
          reviewComment: "Dadas forever and ever.",
        )
        )
      ,
    );
  }
}
