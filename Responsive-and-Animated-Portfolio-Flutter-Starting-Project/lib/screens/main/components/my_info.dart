import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/my-image.jpg"),
              ),
              Spacer(),
              Text(
                "Adnan Khan",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "I am a Developer, Architect, Engineer and Animator",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          color: Color(0xFF242430),
        ));
  }
}
