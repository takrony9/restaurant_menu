import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:restaurant_menu/models/data.dart';
import 'package:restaurant_menu/screens/menu_screen.dart';
import 'package:restaurant_menu/const.dart';

class LoadingScreen extends StatefulWidget {
  final String type;
  LoadingScreen(this.type);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void update() async {
    MenuData menu = MenuData();
    var data = await menu.getMenu(widget.type);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenuScreen(data)),
    );
  }

  @override
  void initState() {
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: KDecoration,
        child: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
