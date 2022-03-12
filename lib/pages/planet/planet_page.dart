import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/planet.dart';

class PlanetPage extends StatefulWidget {
  const PlanetPage({Key? key}) : super(key: key);

  @override
  State<PlanetPage> createState() => _PlanetPageState();
}

class _PlanetPageState extends State<PlanetPage> {
  bool isInteracting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://i.pinimg.com/736x/ac/be/49/acbe49c3f106d163937b8c05c4d48b05.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(255, 49, 88, 116),
                    Color.fromARGB(255, 4, 11, 34),
                  ], radius: 1),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top + 32,
              left: 32,
              right: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem vindo',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Aspirante a Triuplante',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbFwNgbg357n2XdJHgUetzx_Bcv4WipqC9FNUQxiCMtL9z1BqhfE-qM4F-nPlnp0iy6DM&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 32,
              right: 32,
              top: MediaQuery.of(context).size.height / 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'TERRA',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    Text(
                      'Toque para interagir',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.white),
                    ),
                  ]),
            ),
            Align(
                alignment: Alignment.center,
                child: Transform.translate(offset: Offset(0, 80),
                child: CircularProgressIndicator())),
            Positioned(
              top:
                  MediaQuery.of(context).size.height / (!isInteracting ? 3 : 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isInteracting = !isInteracting;
                  });
                },
                child: !isInteracting
                    ? Planet(
                        key: Key('Planet1'),
                        interative: false,
                      )
                    : Planet(
                        key: Key('Planet2'),
                        interative: true,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
