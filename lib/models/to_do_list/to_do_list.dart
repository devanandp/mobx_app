import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'to_do_list.g.dart';

class To_Do_List = _AddToList with _$To_Do_List;

abstract class _AddToList with Store {

  @observable
  ObservableList<String> todoItems = ObservableList<String>();
  @action
  void addTolist(String task){
    todoItems.add(task);
  }

  @action
   removeFromlist(int index){
    todoItems.removeAt(index);
  }

}