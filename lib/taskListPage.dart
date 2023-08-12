import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String taskName;
  final String taskDetails;
  final DateTime dateTime;

  const TaskCard({super.key, required this.taskName, required this.taskDetails, required this.dateTime});

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
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10)
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(widget.taskName, style: const TextStyle(fontWeight: FontWeight.w500)),
           Text(widget.taskDetails),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.dateTime.toString().split(".")[0]),
            ],
          )
        ],
      ),

    );
  }
}