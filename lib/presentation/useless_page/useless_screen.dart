import 'package:flutter/material.dart';
import 'package:useless_app/core/widgets/drawer.dart';
import 'package:useless_app/presentation/useless_page/widgets/custom_button.dart';

class UselessScreen extends StatefulWidget {
  @override
  _UselessScreenState createState() => _UselessScreenState();
}

class _UselessScreenState extends State<UselessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: UselessDrawer()),
      body: Center(
        child: UselessButton(),
      ),
    );
  }
}
