import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        surfaceTintColor: kPrimaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            AssetsData.logo,
            height: 20,
          ),
        ),
        actions: [
          IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 22),
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
