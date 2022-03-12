import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:space_3d/pages/planet/planet_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return PlanetPage();
          }));
        },
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/onboarding/onboarding.jpg',
                  fit: BoxFit.cover),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[900]!.withOpacity(0.3),
            ),
            Positioned(
              bottom: 32,
              left: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EXPLORE',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    'NOSSO',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'PLANETA',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    LineIcons.arrowRight,
                    color: Colors.white.withOpacity(0.6),
                    size: 32,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
