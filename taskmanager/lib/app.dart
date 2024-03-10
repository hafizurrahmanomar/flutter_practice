import 'package:flutter/material.dart';
import 'package:taskmanager/presentation/screens/authentication/splash_screen.dart';
import 'package:taskmanager/presentation/utility/app_colors.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: TaskManager.navigatorKey,
      title: 'Task manager',
      home: const SplashScreen(),
      theme: ThemeData(
          useMaterial3: true,

          /// Default Font Family
          fontFamily: 'Roboto',

          /// InputDecorationTheme
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
          ),

          /// ElevatedButtonThemeData
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: AppColors.themeColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12))),

          /// TextButtonThemeData
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: AppColors.themeColor,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ))),

          /// TextTheme data
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            bodySmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            titleMedium: TextStyle(fontSize: 16, color: Colors.white),
            titleSmall: TextStyle(fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400),

          ),

          ///
          chipTheme: ChipThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))),
    );
  }
}
