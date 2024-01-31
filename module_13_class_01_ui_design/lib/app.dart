import 'package:flutter/material.dart';
import 'package:module_13_class_01_ui_design/product_list_screen.dart';
class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        /// AppBarTheme Start
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
          ),
          /// AppBarTheme End
          /// InputDecorationTheme Start
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
            errorBorder: OutlineInputBorder(),
          ),
          /// InputDecorationTheme End
          /// ElevatedButtonThemeData Start
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )
            ),
          )

        /// ElevatedButtonThemeData End

      ),
      home: const ProductListScreen(),
    );
  }
}