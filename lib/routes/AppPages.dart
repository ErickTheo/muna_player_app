import 'package:get/get.dart';
import 'package:muna_player_app/presentation/screens/HomeView.dart';

part 'AppRoutes.dart';

class AppPages {
  static const Initial = Routes.Home;

  static final pages = [
    GetPage(
        name: Routes.Home,
        page: () => HomeView()),
  ];
}
