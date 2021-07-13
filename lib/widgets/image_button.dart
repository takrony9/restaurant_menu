import 'package:flutter/material.dart';
import 'package:restaurant_menu/const.dart';
import 'package:restaurant_menu/screens/loading_screen.dart';

class ImageButton extends StatelessWidget {
  final String image;
  final String type;
  ImageButton({this.image, this.type});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoadingScreen(type)),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(image),
            borderRadius: BorderRadius.circular(10.0),
          ),
          Text(
            type,
            style: KTextStyle,
          ),
        ],
      ),
    );
  }
}
