import 'package:flutter/material.dart';

class ShowSnackbarView extends StatefulWidget {
  const ShowSnackbarView({super.key});

  @override
  State<ShowSnackbarView> createState() => _ShowSnackbarViewState();
}

class _ShowSnackbarViewState extends State<ShowSnackbarView> {
  _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("hello Everyone"),
      duration: Duration(seconds: 3),
    ));
  }

  _showSnack1() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("hello kushal"),
      duration: Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("snack bar"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: _showSnackbar, child: Text("show message 1")),
          ElevatedButton(onPressed: _showSnack1, child: Text("show message 2"))
        ],
      ),
    );
  }
}
