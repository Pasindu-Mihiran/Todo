import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback add;

  Dialogbox({
    super.key,
    required this.controller,
    required this.add,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Add Your Task'
                ),
              ),
              MaterialButton(
                  onPressed: add,
                  child: Text(
                    'Add'
                  ),
                color: Colors.amber,
              )
            ],
          ),
      ),
    );
  }
}
