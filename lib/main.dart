import 'package:flutter/material.dart';
import 'package:todo_calendar/screen/calendar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: theme.colorScheme.copyWith(
          background: const Color(0xFF1F1F1F),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CalendarScreen(),
    );
  }
}
