// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/social_media_constants.dart';
import 'package:flutter_demo/widgets/search_bar.dart';
import 'package:flutter_demo/widgets/social_media_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Social Media'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              SearchBarWidget(),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 40, right: 150),
                  color: Colors.red,
                  child: const Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SocialMediaWidget(
                socialMediaList: SocialMediaConstants.socialMediaList,
                onAddPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
