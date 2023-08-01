import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
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

      body:const Column(
        children: [
          TaskCard(),
          TaskCard(),
          TaskCard(),
          TaskCard()
        ],
      ),
    );
  }
}

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Task Name", style: TextStyle(fontWeight: FontWeight.w500),),
          const Text("Your Personal task management and planning solution for planning your day, week & months"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(DateTime.now().toString().split(".")[0]),
            ],
          )
        ],
      ),

    );
  }
}

