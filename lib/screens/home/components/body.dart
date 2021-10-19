import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tender_swipe_cards/constants.dart';
import './recommend_plants.dart';
import './header_with_searchbox.dart';
import 'title_with_more_button.dart';
import './featured_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          // it will take 40% of the total width
          const RecommendPlants(),
          TitleWithMoreButton(title: "featured plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
