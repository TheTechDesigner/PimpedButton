import 'package:flutter/material.dart';
import 'package:pimp_my_button/pimp_my_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Pimp Button';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: PimpedButton(
                      particle: DemoParticle(),
                      pimpedWidgetBuilder: (context, controller) {
                        return FloatingActionButton(
                          onPressed: () {
                            controller.forward(from: 0.0);
                          },
                          backgroundColor: Color(0xFFC41A3B),
                          child: Icon(Icons.thumb_up),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: PimpedButton(
                      particle: Rectangle2DemoParticle(),
                      pimpedWidgetBuilder: (context, controller) {
                        return IconButton(
                          onPressed: () {
                            controller.forward(from: 0.0);
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: Color(0xFFC41A3B),
                            size: 32.0,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: PimpedButton(
                      particle: RectangleDemoParticle(),
                      pimpedWidgetBuilder: (context, controller) {
                        return RaisedButton(
                          onPressed: () {
                            controller.forward(from: 0.0);
                          },
                          color: Color(0xFF1B1F32),
                          child: Text(
                            'Click',
                            style: TextStyle(
                              color: Color(0xFFFBE0E6),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: PimpedButton(
                      particle: Rectangle3DemoParticle(),
                      pimpedWidgetBuilder: (context, controller) {
                        return RaisedButton(
                          onPressed: () {
                            controller.forward(from: 0.0);
                          },
                          color: Color(0xFF1B1F32),
                          child: Text(
                            'Click 3D',
                            style: TextStyle(
                              color: Color(0xFFFBE0E6),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: PimpedButton(
                particle: Rectangle2DemoParticle(),
                pimpedWidgetBuilder: (context, controller) {
                  return MaterialButton(
                    onPressed: () {
                      controller.forward(from: 0.0);
                    },
                    child: Text(
                      'Click 2D',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: PimpedButton(
                particle: ListTileDemoParticle(),
                pimpedWidgetBuilder: (context, controller) {
                  return ListTile(
                    onTap: () {
                      controller.forward(from: 0.0);
                    },
                    title: Text(
                      'The Tech Designer',
                      style: TextStyle(
                        color: Color(0xFFC41A3B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Youtube Channel'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
