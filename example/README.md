# example

```dart

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
            Icon(SocialMediaIcons.twitter),
            SocialMediaButton.twitter(
              url: "https://twitter.com/CipliOnat",
              color: Colors.blue,
            ),
            SocialMediaButton.github(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.stackoverflow(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.instagram(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.spotify(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.whatsapp(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.youtube(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.skype(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.facebook(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.google(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.snapchat(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.linkedin(
              onTap: () {
                print('onTap ');
              },
            ),
            SocialMediaButton.dribbble(
              onTap: () {
                print('onTap ');
              },
            ),
          ],
          crossAxisCount: 3,
        ),
      ),
    );
  }
}

```
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
