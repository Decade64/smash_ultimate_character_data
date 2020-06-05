import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';

//The widget that implements our drawer
extension playTriangle on Fighter {
  Widget playstyleGraph() {
    return Center(
        //Load the image, I think I get it now
        child: FutureBuilder(
          future: _loadImage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
            ui.Image image;
            image = snapshot.data;
            //Change of plans we're making this fancy
              return Card(
                elevation: 25,
                child: Container(
                  color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    child: CustomPaint(
                      size: Size(300, 300),
                      painter: playGraph(stockIconGraphOffset, image),
                      ),
                )
              );
        }
        //Just in case it's still loading somehow
        return Text("Loading");
      },
    ));
  }
}

//Play type graph painter class
class playGraph extends CustomPainter {
  //Information needed from fighter
  Offset fighterIconOffset;
  ui.Image fighterIcon;

  //Text spans and painters for our labels to be put on the edges of the triangle
  final TextSpan rushdown =
      TextSpan(text: "Rushdown", style: TextStyle(color: Colors.black));

  final TextSpan baitPunish =
      TextSpan(text: "Bait & Punish", style: TextStyle(color: Colors.black));

  final TextSpan zoning =
      TextSpan(text: "Zoning", style: TextStyle(color: Colors.black));
  TextPainter textPainter = TextPainter(
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  );

  //Paint variable
  Paint _paint;

  playGraph(this.fighterIconOffset, this.fighterIcon) {
    _paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    this.fighterIcon = fighterIcon;
    this.fighterIconOffset = fighterIconOffset;
  }

  //Adjusted offset
  Offset adjustedOffset(double canvasWidth, double canvasHeight) {
    double adjWidth = (canvasWidth / 2) - (fighterIcon.width / 2);
    double adjHeight = (canvasHeight / 2) - (fighterIcon.height / 2) + 25;
    return Offset(
        (adjWidth + fighterIconOffset.dx), (adjHeight + fighterIconOffset.dy));
  }

  @override
  void paint(Canvas canvas, Size size) {
    //Create the path variable and draw our triangle, also try to keep everything
    var path = Path();
    path.moveTo(size.width / 2, (size.height / 4));
    path.lineTo(50, (size.height - 50));
    path.lineTo((size.height - 50), (size.width - 50));
    path.close();
    canvas.drawPath(path, _paint);
    //Rushdown text
    textPainter.text = rushdown;
    textPainter.layout();
    textPainter.paint(canvas, Offset((size.width - textPainter.width) / 2, 25));
    //Bait and punish text
    textPainter.text = baitPunish;
    textPainter.layout();
    textPainter.paint(
        canvas,
        Offset((size.width - textPainter.width),
            (size.height - textPainter.height)));
    //Zoning text
    textPainter.text = zoning;
    textPainter.layout();
    textPainter.paint(canvas,
        Offset(textPainter.width / 2, size.height - textPainter.height));
    //Stock icon
    canvas.drawImage(
        fighterIcon, adjustedOffset(size.width, size.height), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}

//Future load bullshit I don't understand
extension loadBullshit on Fighter {
  Future<ui.Image> _loadImage() async {
    final data = await rootBundle.load(stockIconImageLocation);
    //Making a custom codec to size the image, await really is a godsend
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: 35, targetHeight: 35);
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    ui.Image image = frameInfo.image;
    return image;
  }
}
