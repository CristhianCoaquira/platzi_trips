import 'package:flutter/material.dart';
import 'package:platzi_trips/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  final String pathImage;
  const CardImage({
    Key? key,
    this.pathImage = "assets/img/beach.jpeg"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        Container(
          height: 350.0,
          width: 250.0,
          margin: const EdgeInsets.only(
            top: 80.0,
            left: 20.0,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(pathImage),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0),
                )
              ]
          ),
        ),
        const FloatingActionButtonGreen(),
      ],
    );
  }
}
