import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/models/to_do_list/to_do_list.dart';

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  final To_Do_List obj = To_Do_List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Todo List')),
        body: Center(
          child: Observer(
              builder: (_) => Stack(
                    children: <Widget>[
                      ListView.builder(
                          itemCount: obj.todoItems.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(obj.todoItems[index]),
                              
                            );
                          }),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: _pushAddTodoScreen,
                        ),
                      )
                    ],
                  )),
        ));
  }

  void _pushAddTodoScreen() {
    // Push this page onto the stack
    Navigator.of(context).push(
        // MaterialPageRoute will automatically animate the screen entry, as well
        // as adding a back button to close it
        MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: new AppBar(title: new Text('Add a new task')),
          body: new TextField(
            autofocus: true,
            onSubmitted: (val) {
              obj.addTolist(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: new InputDecoration(
                hintText: 'Enter something to do...',
                contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }

}
