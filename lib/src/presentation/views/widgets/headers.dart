import 'package:flutter/material.dart';
class CurveHeader extends StatelessWidget {
  const CurveHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _CurveHeaderPainter(),
      ),
    );
  }
}


class _CurveHeaderPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xff16A6A3);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, 200);
    path.quadraticBezierTo(size.width*0.5, 250, size.width, 200);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    /*path.lineTo(0, size.height*0.25);
    path.lineTo(size.width*0.5, size.height*0.35);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);*/

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}