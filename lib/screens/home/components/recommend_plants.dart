import 'package:flutter/material.dart';
import '/screens/details/details_screen.dart';
import '../../../constants.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandedPlantCard(
            image: "assets/images/image_1.png",
            title: "sudan",
            country: "mexico",
            price: 22,
            press: () {
              Navigator.pushNamed(context, 'details');
            },
          ),
          RecommandedPlantCard(
            image: "assets/images/image_2.png",
            title: "samanta",
            country: "russia",
            price: 445,
            press: () {
              Navigator.pushNamed(context, 'details');
            },
          ),
          RecommandedPlantCard(
            image: "assets/images/image_3.png",
            title: "samanta",
            country: "russia",
            price: 445,
            press: () {
              Navigator.pushNamed(context, 'details');
            },
          ),
        ],
      ),
    );
  }
}

class RecommandedPlantCard extends StatelessWidget {
  final String? image, title, country;
  final int? price;
  final VoidCallback? press;
  const RecommandedPlantCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: [
          Image.asset(image!),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(.25),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
