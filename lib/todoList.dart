class Todo{

  String? id;
  String? task;
  bool? isDone;

  Todo({
    required this.id,
    required this.task,
    this.isDone = false,
});

  static List<Todo> todoTask(){
    return[
      Todo(id:'01' , task: 'eat' , isDone: true),
      Todo(id:'02' , task: 'run' , isDone: true),
      Todo(id:'03' , task: 'sleep' , ),
      Todo(id:'04' , task: 'read' , ),
    ];

  }
}