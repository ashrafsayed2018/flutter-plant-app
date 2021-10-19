import 'package:flutter/material.dart';
import '/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String? title, country;
  final int? price;
  const TitleAndPrice({
    Key? key,
    this.title,
    this.price,
    this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${title!}\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country!,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$${price!}",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: kPrimaryColor,
                ),
          )
        ],
      ),
    );
  }
}
