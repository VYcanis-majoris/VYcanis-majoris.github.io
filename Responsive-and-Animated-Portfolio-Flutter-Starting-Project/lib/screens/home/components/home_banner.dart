import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing \nCreative Space",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                  if (Responsive.isMobileLarge(context))
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                  MyBuildAnimatedText(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  if (!Responsive.isMobileLarge(context))
                    ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding * 2,
                                vertical: defaultPadding),
                            backgroundColor: primaryColor),
                        child: Text(
                          "EXPLORE NOW",
                          style: TextStyle(color: darkColor),
                        )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) EngineeringCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding,
            ),
          Text("I make "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Brilliant Architectural Designs"),
            TyperAnimatedText("Classic and Engaging Animations"),
            TyperAnimatedText("Accurate MEP Designs"),
          ]),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding,
            ),
          if (!Responsive.isMobileLarge(context)) EngineeringCodedText(),
        ],
      ),
    );
  }
}

class EngineeringCodedText extends StatelessWidget {
  const EngineeringCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: "<", children: [
        TextSpan(
          text: "Engineering",
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(text: ">")
      ]),
    );
  }
}
