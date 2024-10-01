import 'package:cafa_app/feature/home_screen/presentation_layer/home_screen.dart';
import 'package:cafa_app/feature/single_item/presentation_layer/single_item_screen.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/welcome_screen.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{

  static String welcomeScreen = '/';
  static String homeScreen = '/home';
  static String singleItemScreen = '/singleItemScreen';

  static final router = GoRouter(
     routes:[
      GoRoute(
        path: welcomeScreen,
        builder: (context,state) => const WelcomeScreen()
      ),
       GoRoute(
           path: homeScreen,
           builder: (context,state) => const HomeScreen()
       ),
    ]
  );
}