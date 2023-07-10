import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  final List<SocialMedia> socialMediaList;
  final VoidCallback onAddPressed;

  const SocialMediaWidget({
    super.key,
    required this.socialMediaList,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: _buildSocialMediaIcons(),
          ),
          ElevatedButton(
            onPressed: onAddPressed,
            child: const Text('+ Add'),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSocialMediaIcons() {
    List<Widget> icons = [];
    for (var socialMedia in socialMediaList) {
      icons.add(SocialMediaIcon(
        iconData: socialMedia.iconData,
        color: socialMedia.color,
        name: socialMedia.name,
      ));
      icons.add(const SizedBox(width: 8));
    }
    return icons;
  }
}

class SocialMediaIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String name;

  const SocialMediaIcon({
    super.key,
    required this.iconData,
    required this.color,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 8),
        Text(name),
        const SizedBox(width: 16),
      ],
    );
  }
}

class SocialMedia {
  final IconData iconData;
  final Color color;
  final String name;

  SocialMedia({
    required this.iconData,
    required this.color,
    required this.name,
  });
}
