import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:session11_sqlite_db/models/student.dart';
import 'package:session11_sqlite_db/widgets/student_item_info_widget.dart';

class StudentCardWidget extends StatelessWidget {
  final Student student;
  final VoidCallback onDelete;
  final VoidCallback onUpdate;
  const StudentCardWidget(
      {super.key,
      required this.student,
      required this.onDelete,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
                Colors.pink,
                Colors.purple,
                Colors.blue,
                Colors.lightGreen,
                Colors.yellow.shade300,
                Colors.amber,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon(
              //   Icons.circle,
              //   color: Colors.white,
              //   size: 45,
              // ),
              // Icon(
              //   Icons.person,
              //   color: Colors.amber,
              //   size: 40,
              // ),
              StudentItemInfoWidget(title: 'ID', value: student.id.toString()),
              StudentItemInfoWidget(title: 'Name', value: student.name),
              StudentItemInfoWidget(title: 'Email', value: student.email),
              StudentItemInfoWidget(title: 'Mobile', value: student.mobile),
              StudentItemInfoWidget(title: 'Course', value: student.course),
              StudentItemInfoWidget(title: 'Uni', value: student.uni),

              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink, onPrimary: Colors.white),
                          onPressed: onDelete,
                          child: const Text('Delete'))),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                          ),
                          onPressed: onUpdate,
                          child: const Text('Update'))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
