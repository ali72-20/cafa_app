import 'package:cafa_app/feature/welcome_screen/presentation_layer/welcome_screen.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{

  static String welcomeScreen = '/';

  static final router = GoRouter(
     routes:[
      GoRoute(
        path: welcomeScreen,
        builder: (context,state) => const WelcomeScreen()
      )
    ]
  );
}