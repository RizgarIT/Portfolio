import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 67,
                        text: " + ",
                      ),
                      label: " Youtube Subscribers ",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: " + ",
                      ),
                      label: " Videos ",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: " + ",
                      ),
                      label: " LikedIn ",
                    ),

                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 67,
                    text: " + ",
                  ),
                  label: " Youtube Subscribers ",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 251,
                    text: " + ",
                  ),
                  label: "Twitter",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: " + ",
                  ),
                  label: "LikedIn ",
                ),

              ],
            ),
    );
  }
}