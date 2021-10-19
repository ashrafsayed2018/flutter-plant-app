import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tender_swipe_cards/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key, this.icon}) : super(key: key);

  final String? icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 62,
      width: 62,
      margin: EdgeInsets.symmetric(vertical: size.height * .01),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: SvgPicture.asset(icon!),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(.22),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
