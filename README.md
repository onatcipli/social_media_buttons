# social_media_buttons

# usage: 

use SocialMediaButton named constructors such as : 
`SocialMediaButton.twitter()`,
`SocialMediaButton.instagram()`,
`SocialMediaButton.linkedin()`,
`SocialMediaButton.github()` and more

```dart
Widget buildSocialMediaButton(){
  return SocialMediaButton.twitter(
     url: "https://twitter.com/CipliOnat",
     size: 35,
     color: Colors.blue,
  );
}
```
or Just use onTap callback, be careful onTap and url shouldn't be provided at the same time.
```dart
Widget buildSocialMediaButton(){
  return SocialMediaButton.twitter(
     onTap: (){
       print('or just use onTap callback');
     },
     size: 35,
     color: Colors.blue,
  );
}
```

or just use with `Icon` widget

```dart
Widget buildSocialMediaIcon(){
  return Icon(SocialMediaIcons.github);
}
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
