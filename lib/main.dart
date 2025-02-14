import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'SplashScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.light(primary: Colors.green),
        appBarTheme: AppBarTheme(backgroundColor: Colors.green),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.green.shade700,
        colorScheme: ColorScheme.dark(primary: Colors.green),
        appBarTheme: AppBarTheme(backgroundColor: Colors.green.shade900),
      ),
      themeMode: themeProvider.themeMode, // Apply Theme Mode
      home: SplashScreen(),
    );
  }
}
