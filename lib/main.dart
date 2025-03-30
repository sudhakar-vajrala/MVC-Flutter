import 'package:flutter/material.dart';
// import 'package:mvc_sample/Controllers/todo_controller.dart';
import 'package:mvc_sample/views/employee_view.dart';
// import 'package:mvc_sample/views/todo_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC Sample Demo',
      home: EmployeeView(),
    );
  }
}
/*
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  final TodoController _controller = TodoController();
  final TextEditingController _textEditingController = TextEditingController();

  void _addTodo() {
    if(_textEditingController.text.isNotEmpty) {
      setState(() {
        _controller.addTodo(_textEditingController.text);
      });
    }
  }

  void _toggleTodoCompleted(int index){
      setState(() {
        _controller.toggleTodoCompleted(index);
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MVC Todo'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'New Todo',
                  suffixIcon: IconButton(onPressed: (){
                    _addTodo();
                    _textEditingController.clear();
                  }, icon: Icon(Icons.add))
                ),
              ),
              ),
              Expanded(
                child: TodoListView(todos: _controller.todos, onTodoTap: _toggleTodoCompleted)
                )
          ],
        ),
      ),
    );
  }
}
*/