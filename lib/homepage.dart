import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tilw.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['make an app',false],
    ['make a tutorial',true],
  ];

  void checkBoxChanged(bool? value,int index){
    return setState(() {
      if (toDoList[index][1] =! toDoList[index][1]) {}
    });
  }

  void createNewTask(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog();
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text(
          'TO DO',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          createNewTask(context);
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context,index){
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompletionCheck: toDoList[index][1],
              onChanged : (value) => checkBoxChanged(value, index),
          );
        }
      ),
    );
  }
}
