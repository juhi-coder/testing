import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:testing/app/app.locator.dart';
import 'package:testing/app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigationToTodoview() {
    _navigationService.navigateTo(Routes.todoView);
  }
}
