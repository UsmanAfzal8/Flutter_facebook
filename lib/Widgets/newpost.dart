import 'package:flutter/material.dart';

class Newpost extends StatelessWidget {
  const Newpost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 10),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/usmanafzal.png'),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  '''What's on your mind?''',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.photo_library),
                color: Colors.green)
            // Container(
            //   width: 30,
            //   height: 30,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/photogalleryIcon.png'),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
