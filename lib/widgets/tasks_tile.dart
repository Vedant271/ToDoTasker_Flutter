import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({Key? key}) : super(key: key);

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {

  bool ischecked = false;

  void checkboxcallback(bool checkboxstate){
        setState(() {
          ischecked = checkboxstate;
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is check box',
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TasksCheckBox(
          checkboxstate: ischecked,
          togglecheckboxstate: checkboxcallback
      ),
    );
  }
}

class TasksCheckBox extends StatelessWidget {

  final bool checkboxstate;
  final Function togglecheckboxstate;

  const TasksCheckBox({required this.checkboxstate,required this.togglecheckboxstate});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxstate,
      onChanged:(togglecheckboxstate()),
    );
  }
}
