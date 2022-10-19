import 'package:flutter/material.dart';

class sideMenu extends StatelessWidget {
  const sideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Drawer(
    //   child: Column(
    //     children: [
    //       MyInfo(),
    //       Expanded(
    //         child: SingleChildScrollView(
    //           controller: ScrollController(),
    //           padding: EdgeInsets.all(defaultPadding),
    //           child: Column(
    //             children: [
    //               AreaInfoText(
    //                 title: "Residence",
    //                 text: "Pakistan",
    //               ),
    //               AreaInfoText(
    //                 title: "City",
    //                 text: "Swabi",
    //               ),
    //               AreaInfoText(
    //                 title: "Age",
    //                 text: "34",
    //               ),
    //               Skills(),
    //               SizedBox(height: defaultPadding),
    //               Coding(),
    //               Knowledges(),
    //               Divider(),
    //               SizedBox(
    //                 height: defaultPadding / 2,
    //               ),
    //               TextButton(
    //                 onPressed: () {},
    //                 child: FittedBox(
    //                   child: Row(
    //                     children: [
    //                       Text("DOWNLOAD CV",
    //                           style: TextStyle(
    //                             color: Theme.of(context)
    //                                 .textTheme
    //                                 .bodyText1!
    //                                 .color,
    //                           )),
    //                       SizedBox(
    //                         width: defaultPadding,
    //                       ),
    //                       SvgPicture.asset("assets/icons/download.svg")
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 color: Color(0xFF24242E),
    //                 child: Row(
    //                   children: [
    //                     Spacer(),
    //                     IconButton(
    //                         onPressed: () {},
    //                         icon:
    //                             SvgPicture.asset("assets/icons/linkedin.svg")),
    //                     IconButton(
    //                         onPressed: () {},
    //                         icon: SvgPicture.asset("assets/icons/github.svg")),
    //                     IconButton(
    //                         onPressed: () {},
    //                         icon: SvgPicture.asset("assets/icons/twitter.svg")),
    //                     Spacer(),
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return AppBar();
  }
}
