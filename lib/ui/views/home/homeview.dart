import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/ui/views/home/homeviewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: viewModel.navigationToTodoview,
                    child: const Text('Fetch Data')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: viewModel.navigationToTodoview,
                    child: const Text('Example')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
