import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/colors/my_colors.dart';
class WaveGradienteHeader extends StatelessWidget {
  const WaveGradienteHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WaveGradientHeaderPainter(),
      ),
    );
  }
}

class _WaveGradientHeaderPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    final rect = Rect.fromCircle(
      center: const Offset(150,55),
      radius: 180
    );

    /*final Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
      Color(0xff5581F1),
      Color(0xff1DE5E2),
    ]);*/

    final paint = Paint();//..shader = gradient.createShader(rect);
    paint.color = MyColors.primary;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;

    final path = Path();
    path.moveTo(size.width*0.15, size.height*0.5);
    path.quadraticBezierTo(size.width*0.3, size.height*0.1, size.width*0.5, size.height*0.2);
    path.quadraticBezierTo(size.width*0.7, size.height*0.35, size.width, size.height*0.2);
    path.quadraticBezierTo(size.width*0.7, size.height*0.8, size.width*0.65, size.height*0.8);
    path.quadraticBezierTo(size.width*0.15, size.height, size.width*0.15, size.height*0.5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}