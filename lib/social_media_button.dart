import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  /// if url provided, the social media button will open the related url
  /// Be careful, you couldn't use both [url] and [onTap]
  final String? url;

  /// if [url] not provided, [onTap] will do the job
  /// It is only will work when [url] is null.
  final GestureTapCallback? onTap;

  /// If you want to use other icons that we have in [SocialMediaIcons]
  /// you can use this parameter
  final IconData iconData;

  /// IconSize
  final double size;

  /// color of the Icon
  final Color? color;

  const SocialMediaButton({
    Key? key,
    this.url,
    this.onTap,
    required this.iconData,
    this.size = 24,
    this.color,
  }) : super(key: key);

  const SocialMediaButton.instagram({
    this.iconData = SocialMediaIcons.instagram,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.twitter({
    this.iconData = SocialMediaIcons.twitter,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.linkedin({
    this.iconData = SocialMediaIcons.linkedin,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.stackoverflow({
    this.iconData = SocialMediaIcons.stackoverflow,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.dribbble({
    this.iconData = SocialMediaIcons.dribbble,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.facebook({
    this.iconData = SocialMediaIcons.facebook,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.github({
    this.iconData = SocialMediaIcons.github_circled,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.google({
    this.iconData = SocialMediaIcons.google,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.pinterest({
    this.iconData = SocialMediaIcons.pinterest,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.youtube({
    this.iconData = SocialMediaIcons.youtube,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.whatsapp({
    this.iconData = SocialMediaIcons.whatsapp,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.spotify({
    this.iconData = SocialMediaIcons.spotify,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.reddit({
    this.iconData = SocialMediaIcons.reddit,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.skype({
    this.iconData = SocialMediaIcons.skype,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.stackexchange({
    this.iconData = SocialMediaIcons.stackexchange,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.snapchat({
    this.iconData = SocialMediaIcons.snapchat_ghost,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.soundcloud({
    this.iconData = SocialMediaIcons.soundcloud,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  const SocialMediaButton.medium({
    this.iconData = SocialMediaIcons.medium,
    this.url,
    this.size = 24,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Icon(
          iconData,
          size: size,
          color: color,
        ),
        onTap: () {
          if (url != null) {
            try {
              if (Platform.isIOS || Platform.isAndroid) {
                _launchURLInMobile(url!);
              } else {
                _launchURLInWeb(url!);
              }
            } catch (e) {
              print(e);
              _launchURLInWeb(url!);
            }
            return;
          } else if (onTap != null) {
            onTap!();
          } else {
            throw Exception(
                'url and onTap shouldnt be null at the same time !');
          }
        },
      ),
    );
  }

  _launchURLInMobile(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURLInWeb(String url) {
    html.window.open(url, '');
  }
}
