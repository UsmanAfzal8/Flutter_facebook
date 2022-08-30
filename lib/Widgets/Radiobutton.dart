import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Radiochecker extends StatefulWidget {
  const Radiochecker({Key? key}) : super(key: key);

  @override
  State<Radiochecker> createState() => _RadiocheckerState();
}

class _RadiocheckerState extends State<Radiochecker> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 150,
          child: RadioListTile(
            value: 0,
            groupValue: _groupValue,
            title: Text("Male"),
            onChanged: (newValue) =>
                setState(() => _groupValue = newValue as int),
            activeColor: Colors.white,
            selected: false,
          ),
        ),
        SizedBox(
          width: 150,
          child: RadioListTile(
            value: 1,
            groupValue: _groupValue,
            title: Text("Female"),
            onChanged: (newValue) =>
                setState(() => _groupValue = newValue as int),
            activeColor: Colors.white,
            selected: false,
          ),
        ),
      ],
    );
  }
}
