import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Social Media Buttons'),
        ),
        body: GridView.count(
          children: <Widget>[
            FittedBox(
              fit: BoxFit.fitWidth,
              child: SocialMediaButton.dribbble(
                url: "https://twitter.com/CipliOnat",
                color: Colors.blue,
              ),
            ),
            SocialMediaButton.twitter(url: ""),
          ],
          crossAxisCount: 3,
        ),
      ),
    );
  }
}
