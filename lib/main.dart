import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/onboarding/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planet',
      home: OnboardingPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.workSansTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Scene _scene;
  Object? _earth;
  late Object _stars;
  late AnimationController _controller;

  void _onSceneCreated(Scene scene) {
    _scene = scene;
    _scene.camera.position.z = 16;

    // model from https://free3d.com/3d-model/planet-earth-99065.html
    _earth = Object(
        name: 'earth',
        scale: Vector3(10.0, 10.0, 10.0),
        backfaceCulling: true,
        fileName: 'assets/earth/earth.obj');

    _scene.world.add(_earth!);

    // texture from https://www.solarsystemscope.com/textures/
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 30000), vsync: this)
      ..addListener(() {
        if (_earth != null) {
          _earth!.rotation.x = _controller.value * -360;
          _earth!.updateTransform();
          _scene.update();
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            bottom: -MediaQuery.of(context).size.height / 1.2,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                /*Cube(
                  onSceneCreated: _onSceneCreated,
                ),
                BackdropFilter(
                  filter: new ImageFilter.blur(
                      sigmaX: 20, sigmaY: 20, tileMode: TileMode.mirror),
                  child: Cube(
                    interactive: false,
                    onSceneCreated: _onSceneCreated,
                  ),
                ),*/
                /*IgnorePointer(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height / 2,
            child: TweenAnimationBuilder(
                tween: Tween(begin: 0.7, end: 1.0),
                duration: Duration(milliseconds: 300),
                builder: (context, animation, child) {
                  return Opacity(
                    opacity: 0.7,
                    child: Image(
                      image: AssetImage('assets/flash/flash.png'),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}*/*/
