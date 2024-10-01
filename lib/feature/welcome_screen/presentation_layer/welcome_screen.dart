import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/welcome_screen_body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Material(
        child: WelcomeScreenBody(),
      ),
    );
  }
}
