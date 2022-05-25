import 'package:flutter/material.dart';

class FloatingOverley extends StatefulWidget {
  const FloatingOverley({Key? key}) : super(key: key);

  @override
  State<FloatingOverley> createState() => _FloatingOverleyState();
}

class _FloatingOverleyState extends State<FloatingOverley> {
  OverlayEntry? entry;
  Offset offset = Offset(40, 140);
  @override
  Widget build(BuildContext context) {
    void showOverlay() {
      entry = OverlayEntry(
        builder: (context) => Positioned(
          left: offset.dx,
          top: offset.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() => offset += details.delta);
              entry!.markNeedsBuild();
            },
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: showOverlay,
                  child: Container(
                      height: 50,
                      width: 150,
                      child: Center(child: Text('Show Floating Widget'))),
                ),
              ],
            ),
          ),
        ),
      );
      final overlay = Overlay.of(context);
      overlay!.insert(entry!);
    }

    void hideOverlay() {
      entry!.remove();
      entry = null;
    }

    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Floating Over lay',
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showOverlay,
              child: Text('Show Floating Widget'),
            ),
            ElevatedButton(
              onPressed: hideOverlay,
              child: Text('Hide Floating Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
