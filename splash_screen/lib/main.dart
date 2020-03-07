import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // Outer white container with padding
          body: Center(
            child: Container(
              child: LayoutBuilder(
                builder: (_, constraints) => Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                    // Inner yellow container

                    width: constraints.widthConstraints().maxWidth,
                    height: constraints.heightConstraints().maxHeight,

                    //child: CustomPaint(painter: FaceOutlinePainter()),
                    /*child: Image.asset(
                'image/Group1.png',
                width: 200,
                height: 200,
              ),*/
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomPaint(painter: FaceOutlinePainter()),
                        Image.asset(
                          'image/Group1.png',
                          width: 200,
                          height: 200,
                        ),
                        CustomPaint(painter: FaceOutlinePainter2()),
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.yellowAccent;

    paint.color = Colors.amber[600];
    paint.style = PaintingStyle.fill;
    canvas.drawOval(
      Rect.fromLTWH(size.width - -80, -650, 600, 600),
      paint,
    );
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}

class FaceOutlinePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.yellowAccent;

    paint.color = Colors.amber[600];
    paint.style = PaintingStyle.fill;

    canvas.drawOval(
      Rect.fromLTWH(size.width - 680, 50, 600, 600),
      paint,
    );
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}
