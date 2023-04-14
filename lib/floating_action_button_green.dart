import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FloatingActionButtonGreen> createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isLiked = false;

  void onPressedFav() {
    final contextScaffold = ScaffoldMessenger.of(context);
    contextScaffold.hideCurrentSnackBar();
    setState(() {
      isLiked = !isLiked;
    });
    if (isLiked) {
      contextScaffold.showSnackBar(
          const SnackBar(content: Text("Add to Favorites"))
      );
    }else {
      contextScaffold.showSnackBar(
          const SnackBar(content: Text("Remove from favorites"))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
          isLiked ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
