import 'package:coach_buddy/feature/signup/view/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                "https://i.postimg.cc/15gdtSR8/Chat-GPT-Image-Jul-26-2025-03-23-13-PM.png",
                fit: BoxFit.contain,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Text(
                  "Welcome to CoachBuddy",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Your all-in-one coaching assistant. Easily manage students, track fees, and stay organized — all from one simple app.\n\nLet’s make coaching smarter, together",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.color!.withValues(alpha: 0.64),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // const Spacer(flex: 3),
                TextButton.icon(
                  onPressed: () {
                    context.go("${GoRouter.of(context).state.path}${SignUpScreen.routeName}");
                  },
                  icon: const Text("Start"),
                  label: const Icon(Icons.arrow_forward_ios, size: 20),
                ),
                SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
