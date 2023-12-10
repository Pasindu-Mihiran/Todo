import 'package:flutter/material.dart';
import 'todoItems.dart';
import 'todoList.dart';
import 'dialog_screen.dart';

class todo extends StatefulWidget {

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {

  final _controller = TextEditingController();

  List worklist = [
    ['Run',false],
    ['work',false]
  ];

  void onChanged(bool? value,int index){
    setState(() {
      worklist[index][1] =!worklist[index][1];
    });
  }
  void onSave(){
    setState(() {
      worklist.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void addTask(){
    showDialog(
        context: context,
        builder: (context){
          return Dialogbox(
            controller: _controller,
            add: onSave,
          );
        }
    );
  }

  void deleteTask(int index){
    setState(() {
      worklist.removeAt(index);
    });

  }
  // String? task ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'TODO',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 20
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body:ListView.builder(
            itemCount: worklist.length,
            itemBuilder:(context,index) {
              return todoitem(
                task: worklist[index][0],
                isDone: worklist[index][1],
                onChanged: (value) => onChanged(value, index),
                deleteFunction: (context) =>deleteTask(index),
              );
            }
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        backgroundColor: Colors.amber,
        child: Icon(
        Icons.add,
        color: Colors.black,
        ),
    ),
    );
  }
}

