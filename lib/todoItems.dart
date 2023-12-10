import 'package:flutter/material.dart';
import 'todoList.dart';


class todoitem extends StatelessWidget {
  // const todoItem ({super.key});

  // final Todo todo;
  // todoitem({Key?key, required this.todo}) : super(key: key);

  final String task;
  final bool isDone;
  Function(bool?)? onChanged;
  // VoidCallback deleteTask;
 Function(BuildContext)? deleteFunction;

  todoitem({
    super.key,
    required this.task,
    required this.isDone,
    required this.onChanged,
    required this.deleteFunction,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10,15,10,15),
      child: Card(
        color: Colors.amber,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(value: isDone,
                activeColor: Colors.amber,
                checkColor: Colors.black,
                tristate: true,
                // onChanged:(value) =>Onchange(widget.isDone)
                onChanged: onChanged,
              ),
              Text('${task}',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  decoration: isDone
                      ? TextDecoration.lineThrough:
                      TextDecoration.none
                ),
              ),
              IconButton(
                  onPressed:() {
                    deleteFunction
                  },
                   icon: Icon(Icons.delete_forever)
              )
            ],
          ),
        ),

      ),
    );
  }
}

