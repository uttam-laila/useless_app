import 'package:flutter/material.dart';

class UselessScreen extends StatefulWidget {
  final String title;

  const UselessScreen({Key? key, required this.title}) : super(key: key);
  @override
  _UselessScreenState createState() => _UselessScreenState();
}

class _UselessScreenState extends State<UselessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('This is an Useless App...'),
      ),
    );
  }
}
