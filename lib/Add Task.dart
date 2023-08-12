class AddTask{
  final String taskName;
  final String taskDetails;
  final DateTime dateTime;
//constructor
  AddTask({
    required this.taskName,
    required this.taskDetails,
    required this.dateTime

  });

  @override
  String toString() {
    return 'AddTask{taskName: $taskName, taskDetails: $taskDetails, dateTime: $dateTime}';
  }
}