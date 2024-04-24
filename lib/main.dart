import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Creeper'),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(20),
            color: Colors.grey[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 50,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 80,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 71, 48, 5),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 80,
                        child: Container(
                          width: 40,
                          height: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Creeper',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Creeper is a mob from the game Minecraft, which is characterized by explosiveness.',
                    textAlign: TextAlign.center, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreeperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Stack(
        children: [
          // Eyes
          Positioned(
            left: 60,
            top: 60,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 60,
            top: 60,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Nose
          Positioned(
            left: 90,
            top: 100,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          // Mouth
          Positioned(
            left: 50,
            top: 140,
            child: Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
