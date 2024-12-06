import 'package:first_assignment/core/common/student_listview.dart';
import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = const SizedBox(height: 8);

  final items = [
    const DropdownMenuItem(value: 'Pokhara', child: Text('Pokhara')),
    const DropdownMenuItem(value: 'Dharan', child: Text('Dharan')),
    const DropdownMenuItem(value: 'Sikkim', child: Text('Sikkim')),
  ];

  List<Student> lstStudents = [];

  String? selectedCity;

  //Controllers
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _fnameController.dispose();
    _lnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Detail'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                labelText: 'Enter fname',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                labelText: 'Enter lname',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              icon: Icon(Icons.arrow_downward),
              items: items,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Select city',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Student student = Student(
                    fname: _fnameController.text.trim(),
                    lname: _lnameController.text.trim(),
                    city: selectedCity!,
                  );
                  setState(() {
                    lstStudents.add(student);
                  });

                  debugPrint(lstStudents.length.toString());
                },
                child: const Text('Add Student '),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/output',
                      arguments: lstStudents);
                },
                child: const Text('View Students '),
              ),
            ),
            //Display student details in list view
            lstStudents.isEmpty
                ? Text('No data')
                : StudentListView(lstStudents: lstStudents)
          ],
        ),
      ),
    );
  }
}
