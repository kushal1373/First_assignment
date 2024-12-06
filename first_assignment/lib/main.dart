import 'package:first_assignment/app.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_output_view.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
     MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentDetailsView(),
        '/output': (context) =>  const StudentOutputView(),
      },
    ),
  );
}