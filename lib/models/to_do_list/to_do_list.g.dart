// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$To_Do_List on _AddToList, Store {
  final _$todoItemsAtom = Atom(name: '_AddToList.todoItems');

  @override
  ObservableList<String> get todoItems {
    _$todoItemsAtom.context.enforceReadPolicy(_$todoItemsAtom);
    _$todoItemsAtom.reportObserved();
    return super.todoItems;
  }

  @override
  set todoItems(ObservableList<String> value) {
    _$todoItemsAtom.context.conditionallyRunInAction(() {
      super.todoItems = value;
      _$todoItemsAtom.reportChanged();
    }, _$todoItemsAtom, name: '${_$todoItemsAtom.name}_set');
  }

  final _$_AddToListActionController = ActionController(name: '_AddToList');

  @override
  void addTolist(String task) {
    final _$actionInfo = _$_AddToListActionController.startAction();
    try {
      return super.addTolist(task);
    } finally {
      _$_AddToListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFromlist(int index) {
    final _$actionInfo = _$_AddToListActionController.startAction();
    try {
      return super.removeFromlist(index);
    } finally {
      _$_AddToListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'todoItems: ${todoItems.toString()}';
    return '{$string}';
  }
}
