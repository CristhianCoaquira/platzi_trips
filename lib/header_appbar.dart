import 'package:flutter/material.dart';
import 'package:platzi_trips/card_image_list.dart';
import 'package:platzi_trips/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(title: "Bienvenido"),
        CardImageList(),
      ],
    );
  }
}
