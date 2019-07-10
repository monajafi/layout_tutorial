import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget titleSection = Container(
    padding: EdgeInsets.all(32.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ]),
        ),
        Icon(Icons.star, color: Colors.red),
        Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Flutter layout tutorial",
      )),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/photo.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          ButtonSection(),
          Container(
            padding: EdgeInsets.all(32.0),
            child: Text(
              'Oeschinensee is accessible by foot from Kandersteg within 1.5 hours.'
              'The cable car operates in summer and winter season daily from mornings till evenings - non stop'
              '. In summer enjoy swimming in the lake, boat rides on the'
              'blue and clear water or just have fun with the toboggan run'
              ,
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  Widget _buildColumn(BuildContext context, IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                color: color, fontSize: 12.0, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildColumn(context, Icons.call, "CALL"),
        _buildColumn(context, Icons.near_me, "ROUTE"),
        _buildColumn(context, Icons.share, "SHARE"),
      ],
    );
  }
}
