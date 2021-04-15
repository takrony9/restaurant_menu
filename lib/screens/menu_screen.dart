import 'package:flutter/material.dart';
import 'package:restaurant_menu/const.dart';
import 'package:restaurant_menu/screens/home_screen.dart';
import 'package:restaurant_menu/widgets/item_card.dart';

class MenuScreen extends StatefulWidget {
  var data;
  MenuScreen(this.data);
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
        ),
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
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  Container(
                    height: 5,
                    color: Colors.black26,
                  ),
                  ItemCard(
                    type: widget.data['ingr'][index]['type'],
                    image: widget.data['ingr'][index]['imageURL'],
                    ingr: widget.data['ingr'][index]['ingr'],
                    size: [
                      widget.data['ingr'][index]['size'],
                    ],
                    price: [
                      widget.data['ingr'][index]['price'],
                    ],
                  ),
                ],
              );
            },
            itemCount: widget.data['ingr'].length,
          ),
        ),
      ),
    );
  }
}
