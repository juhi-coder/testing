import 'package:testing/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:testing/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:testing/ui/views/login/login_view.dart';
import 'package:testing/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:testing/ui/views/counter/counter_view.dart';
import 'package:testing/ui/views/text_reverse/text_reverse_view.dart';
import 'package:testing/ui/views/todo_view/todo_view_view.dart';

import '../services/api_service.dart';

// @stacked-import
//
@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: TextReverseView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: TodoView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
