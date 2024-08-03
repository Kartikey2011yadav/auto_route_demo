
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/guard/auth_guard.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true, path: "/home"),
    AutoRoute(page: ArticleRoute.page, path: "/article"),
    AutoRoute(page: ChatRoute.page, path: "/chat"),
    AutoRoute(page: NotificationRoute.page, path: "/notification"),
    AutoRoute(page: ProfileRoute.page, path: "/profile"),
    AutoRoute(page: SearchRoute.page, path: "/search", guards: [AuthGard()]),
    AutoRoute(page: Login.page, path: "/login")
  ];

}