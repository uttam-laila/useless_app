import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:useless_app/application/providers.dart';
import 'package:useless_app/injection.dart';
import 'package:useless_app/presentation/useless_screen.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: List.from(providers),
      child: MaterialApp(
        title: 'Useless App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UselessScreen(title: 'Useless app Home Page'),
      ),
    );
  }
}
