import 'package:firebase_core/firebase_core.dart';
import 'package:uno_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:uno_chat/screen/chat_screen.dart';
import 'package:uno_chat/screen/login_screen.dart';
import 'package:uno_chat/screen/registration_screen.dart';
bool shouldUseFirebaseEmulator = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:'welcome_screen',
      routes: {
        'welcome_screen':(context)=> WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'chat_screen': (context) => ChatScreen(),
      },
    );
  }
}

