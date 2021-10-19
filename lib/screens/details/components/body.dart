import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './title_and_price.dart';
import './image_and_icons.dart';
import '/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ImageAndIcons(),
            const TitleAndPrice(title: "ashraf", country: "egypt", price: 444),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              children: [
                SizedBox(
                  height: 84,
                  width: size.width / 2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 25),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Buy now"),
                  ),
                ),
                Expanded(
                    child: TextButton(
                  onPressed: () {},
                  child: const Text('Description'),
                ))
              ],
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            )
          ],
        ),
      ),
    );
  }
}
