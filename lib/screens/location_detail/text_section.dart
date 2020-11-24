import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double hPad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(hPad, 32.0, hPad, 4.0),
            child: Text(
              _title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: hPad),
            child: Text(
              _body,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ]);
  }
}
