import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useless_app/application/useless_provider.dart';

class UselessButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _provider = context.watch<UselessProvider>();
    return InkWell(
      onTap: () {
        _provider.uselessFunction(!_provider.uselessEntity.uselessState);
        Future.delayed(Duration(seconds: 2)).then((value) =>
            _provider.uselessFunction(!_provider.uselessEntity.uselessState));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 2,
        margin: EdgeInsets.all(2.0),
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _provider.uselessEntity.uselessState
              ? Colors.white
              : Color.fromRGBO(
                  _provider.uselessEntity.red,
                  _provider.uselessEntity.green,
                  _provider.uselessEntity.blue,
                  1),
          border: Border.all(width: 4, color: Theme.of(context).accentColor),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Theme.of(context).accentColor,
            )
          ],
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              width: MediaQuery.of(context).size.width / 2.2,
              height: 50.0,
              top: _provider.uselessEntity.uselessState
                  ? 0.0
                  : MediaQuery.of(context).size.height,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Container(
                height: MediaQuery.of(context).size.height / 6,
                color: Colors.green,
                child: Center(
                  child: Text('Hello !!!',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
