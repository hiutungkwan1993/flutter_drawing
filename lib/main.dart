import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          child: new CustomPaint(
            painter: new Artboard(),
          ),
        ),
      ),
    );
  }
}

class Artboard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var linePaint = new Paint()
      ..color = Colors.blueAccent
      ..strokeWidth = 30.0
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(new Offset(0.0, -200.0), new Offset(0.0, 200.0), linePaint);

    var paint = new Paint()
      ..color = Colors.red[400]
      ..strokeWidth = 20.0
      ..style = PaintingStyle.fill;

    canvas.drawCircle(new Offset(0.0, 0.0), 60.0, paint);

    var recPaint = new Paint()
      ..color = Colors.blue[900]
      ..strokeWidth = 20.0
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..blendMode = BlendMode.screen;

    canvas.drawRect(new Rect.fromLTWH(-90.0, -90.0, 180.0, 180.0), recPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
