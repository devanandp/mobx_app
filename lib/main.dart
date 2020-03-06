import 'package:flutter/material.dart';
import 'package:mobx_app/models/to_do_list/to_do_list.dart';
import 'package:mobx_app/screens/to_do_list.dart';

// Code written in Dart starts exectuting from the main function. runApp is part of
// Flutter, and requires the component which will be our app's container. In Flutter,
// every component is known as a "widget".
void main() => runApp(new TodoApp());

// Every component in Flutter is a widget, even the whole app itself
class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Todo List',
        home:  TodoList()
    );
  }
}

