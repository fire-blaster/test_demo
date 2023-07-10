import 'package:flutter/material.dart';

class SocialMedia {
  final IconData iconData;
  final Color color;
  final String name;

  const SocialMedia({
    required this.iconData,
    required this.color,
    required this.name,
  });
}

class SocialMediaConstants {
  static const List<SocialMedia> socialMediaList = [
    SocialMedia(
      iconData: Icons.message,
      color: Colors.green,
      name: 'WhatsApp',
    ),
    SocialMedia(
      iconData: Icons.facebook,
      color: Colors.blue,
      name: 'Facebook',
    ),
  ];
}
