import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class Network {
  final String url;
  Network(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else
      print(response.statusCode);
    /*else {

      final alert = AlertDialog(
        content: Container(

            child: Column(

                children: [
                  Text(response.statusCode.toString()),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Close',
                        style:
                        TextStyle(color: Colors.blue),
                      ))
                ]),
            height: 80),
        title: Text('Error!'),
      );
      showDialog(
          context: context,
          builder: (BuildContext ctx) {
            context = ctx;
            return alert;
          });
    }*/
  }
}
