import 'package:flutter/material.dart';
import 'package:flutter_01/taskListPage.dart';

import 'Add Task.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List<AddTask> taskList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board", style: TextStyle(color: Colors.black)),
            centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),

      body:Column(
        children: [
          TaskCard(
            taskName: "Task One",
            taskDetails: "First Task",
            dateTime: DateTime.now(),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:() {
          taskList.add(
              AddTask(
                  taskName: "taskName",
                  taskDetails: "taskDetails",
                  dateTime: DateTime.now())
          );
        },
        backgroundColor: Colors.black12,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}


