import 'dart:ffi';

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
   ToDoTile({Key? key, required this.taskName, required this.taskCompletionCheck,required this.onChanged}) : super(key: key);
  final String taskName;
  final bool taskCompletionCheck;
  Function(bool?)?onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25.0,top: 25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.yellow,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Checkbox(
              value: taskCompletionCheck,
                  onChanged: onChanged,
                activeColor: Colors.red,
              ),
              Text(taskName,
                style: TextStyle(
                  decoration: taskCompletionCheck ? TextDecoration.lineThrough : TextDecoration.none,
                fontSize: 15,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
