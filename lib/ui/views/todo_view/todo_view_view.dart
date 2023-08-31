// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/ui/views/todo_view/todo_view_viewmodel.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TodoViewViewModel>.reactive(
      viewModelBuilder: () => TodoViewViewModel(),
      onModelReady: (viewModel) => viewModel.getTodos(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Todo Data'),
        ),
        body: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: viewModel.todos.length,
                itemBuilder: (context, index) {
                  final todo = viewModel.todos[index];
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    color: Colors.pink[100],
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(todo.title),
                          Text('${todo.complete}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
