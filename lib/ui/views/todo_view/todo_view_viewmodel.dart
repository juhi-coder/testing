import 'package:stacked/stacked.dart';
import 'package:testing/app/app.locator.dart';

import '../../../models/todo.dart';
import '../../../services/api_service.dart';

class TodoViewViewModel extends BaseViewModel {
  List<Todo> todos = [];
  final _apiService = locator<ApiService>();

  Future<void> getTodos() async {
    setBusy(true);
    todos = await _apiService.fetchData();
    setBusy(false);
  }
}
