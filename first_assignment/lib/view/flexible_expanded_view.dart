import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        //expanded le equally divide garcha
        Expanded(
          flex: 2,
          child: Container(
            // height: 100,
            width: double.infinity,
            color: Colors.orange,
          ),
        ),
        //flexible it makes the image flexible in any situation
        Flexible(
          flex: 4,
          fit: FlexFit.loose,
          child: Container(
            // height: 600,
            width: double.infinity,
            color: Colors.yellow,
          ),
        ),
      ]),
    ));
  }
}
