
import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: ArticleRoute.page),
    AutoRoute(page: ChatRoute.page),
    AutoRoute(page: NotificationRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: SearchRoute.page),
  ];

}