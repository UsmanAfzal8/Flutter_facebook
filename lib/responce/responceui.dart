import 'package:flutter/material.dart';

class ResponsiveUi extends StatefulWidget {
  final Widget mobileScreeenlayout;
  final Widget webScreeenlayout;
  const ResponsiveUi(
      {Key? key,
      required this.webScreeenlayout,
      required this.mobileScreeenlayout})
      : super(key: key);

  @override
  State<ResponsiveUi> createState() => _ResponsiveUiState();
}

class _ResponsiveUiState extends State<ResponsiveUi> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return widget.webScreeenlayout;
      } else
        return widget.mobileScreeenlayout;
    });
  }
}
