import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeightLight extends StatelessWidget {
  const HeightLight({
    Key? key,
    required this.counter,
    this.text,
  }) : super(key: key);

  final Widget counter;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "$text",
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
