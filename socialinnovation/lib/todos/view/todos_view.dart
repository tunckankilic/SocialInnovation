import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialinnovation/todos/cubit/todos_cubit.dart';

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  void initState() {
    context.read<TodosCubit>().fetchTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final todos = context.select((TodosCubit cubit) => cubit.state);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return Text(
                  todo,
                  style: Theme.of(context).textTheme.headlineSmall,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
