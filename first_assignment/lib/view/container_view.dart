import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 150,
              height: 150,
              alignment: Alignment.center,
              child: const Text("I am a container"),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
