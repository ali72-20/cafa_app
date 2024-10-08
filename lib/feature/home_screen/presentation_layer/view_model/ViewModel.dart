import 'package:cafa_app/core/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ViewModel{

  navigateToCartScreen(BuildContext context){
    GoRouter.of(context).push(AppRouter.cartScreen);
  }

}