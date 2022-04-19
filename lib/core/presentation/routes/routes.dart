import 'package:auto_route/auto_route.dart';
import 'package:mvvm_model/authentication/presentation/homepage.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    page: HomePage,
    initial: true,
  ),

  //initial: true,
])
class $AppRouter {}
