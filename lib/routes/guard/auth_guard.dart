import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/app_router.gr.dart';

class AuthGard extends AutoRouteGuard{
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(Login(onResult: (result ) {
      if(result == true){
        resolver.next(true);
        router.removeLast();
      }
    }));
  }
  
}