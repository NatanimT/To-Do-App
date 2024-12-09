import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:to_do/models/data.dart';
import 'Screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
          ),
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}
