import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UselessDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DrawerHeader(
                child: Center(child: Text('Useless App')),
              ),
              ListTile(
                title: Center(
                    child: Column(
                  children: [
                    Text('This app is designed and developed by'),
                    ListTile(
                      onLongPress: () {
                        Clipboard.setData(ClipboardData(
                                text:
                                    'https://www.linkedin.com/in/uttamlaila/'))
                            .then((_) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Profile copied to clipboard")));
                          Navigator.pop(context);
                        });
                      },
                      title: Center(
                        child: Text(
                          'Uttam Laila',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                        'This app is coded in Flutter (Dart) and uses Provider to maintain the states. You can get the source code from the below link.'),
                  ],
                )),
              ),
              ListTile(
                title: Center(child: Text('Github Link')),
                onTap: () {
                  Clipboard.setData(ClipboardData(
                          text: 'https://github.com/uttam-laila/useless_app'))
                      .then((_) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Github address copied to clipboard")));
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('App icon designed by '),
                    Text(
                      'Vineeth J',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                onTap: () {
                  Clipboard.setData(ClipboardData(
                          text: 'https://www.instagram.com/_vinu_creation_/'))
                      .then((_) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Profile copied to clipboard")));
                    Navigator.pop(context);
                  });
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(child: Text('Version: 1.0.0+1')),
                  SizedBox(
                    height: 12,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
