import 'package:flutter/material.dart';
import 'package:tender_swipe_cards/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturPlantCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
          FeaturPlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturPlantCard extends StatelessWidget {
  final String? image;
  final VoidCallback? press;
  const FeaturPlantCard({Key? key, this.image, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}
