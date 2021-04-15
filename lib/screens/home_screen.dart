import 'package:flutter/material.dart';
import 'package:restaurant_menu/widgets/image_button.dart';
import 'package:restaurant_menu/const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurant Menu',
          style: KTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffe68a00),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: KDecoration,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 700,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView(
                  children: [
                    ImageButton(
                      image: 'assets/images/pizza.jfif',
                      type: 'pizza',
                    ),
                    ImageButton(
                      image: 'assets/images/fish.jfif',
                      type: 'fish',
                    ),
                    ImageButton(
                      image: 'assets/images/fried_chicken.jfif',
                      type: 'fried chicken',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
