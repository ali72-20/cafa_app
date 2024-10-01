import 'package:cafa_app/core/app_router.dart';
import 'package:cafa_app/core/colors.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor
      ),
    );
  }
}
