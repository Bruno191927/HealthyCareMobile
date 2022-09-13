import 'package:flutter/material.dart';
class BackgroundColorWidget extends StatelessWidget {
  const BackgroundColorWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xff1DE5E2).withOpacity(0.7),
              const Color(0xff5581F1).withOpacity(0.8)
            ]
          )
        ),
    );
  }
}