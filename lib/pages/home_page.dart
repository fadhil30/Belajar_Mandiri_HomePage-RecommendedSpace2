import 'dart:math';

import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/city_card_widget.dart';
import 'package:cozy_app/widget/space_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:cozy_app/models/city_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: edge,
            ),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Explore Now',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Popular Cities',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      CityCardWidget(City(
                          id: 1,
                          name: 'Jakarta',
                          imageURL: 'assets/images/city1.png',
                          isPopular: false)),
                      const SizedBox(
                        width: 20,
                      ),
                      CityCardWidget(City(
                          id: 2,
                          name: 'Bandung',
                          imageURL: 'assets/images/city2.png',
                          isPopular: true)),
                      const SizedBox(
                        width: 20,
                      ),
                      CityCardWidget(City(
                          id: 2,
                          name: 'Surabaya',
                          imageURL: 'assets/images/city3.png',
                          isPopular: false)),
                      const SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Recommended Space',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    SpaceCardWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    SpaceCardWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    SpaceCardWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
