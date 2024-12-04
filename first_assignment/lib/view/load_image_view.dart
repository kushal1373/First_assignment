import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Load Image View'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: SafeArea(
      //   child: Center(
      //     child: Image.asset('assets/images/image_1.png'),),)
      body: Container(
        color: Colors.yellow,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/ronaldo.jpg'),
              Image.asset('assets/images/ronaldo1.jpg'),
              // Image.asset('assets/images/image_1.png'),
              // Image.asset('assets/images/image_1.png'),
              // Image.asset('assets/images/image_1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
