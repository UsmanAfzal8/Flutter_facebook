import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  final IconData iconData;
  final double size;
  final void Function()? onpressed;
  const IconsWidget(
      {Key? key,
      required this.iconData,
      required this.size,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(
          iconData,
        ),
        color: Colors.black,
      ),
    );
  }
}

class CutomIcons extends StatelessWidget {
  final void Function()? onpressed;
  const CutomIcons({
    Key? key,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Icons/messenger.png'),
            ),
          ),
        ),
      ),
    );
  }
}
