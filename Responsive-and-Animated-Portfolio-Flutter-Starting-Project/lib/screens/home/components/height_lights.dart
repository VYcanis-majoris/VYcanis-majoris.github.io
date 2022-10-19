import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'height_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
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
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: "K+",
                      ),
                      text: "Subscribers",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      text: "Videos",
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      text: "GitHub Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 50,
                        text: "K+",
                      ),
                      text: "Stars",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: "K+",
                  ),
                  text: "Subscribers",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  text: "Videos",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  text: "GitHub Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 50,
                    text: "K+",
                  ),
                  text: "Stars",
                ),
              ],
            ),
    );
  }
}
