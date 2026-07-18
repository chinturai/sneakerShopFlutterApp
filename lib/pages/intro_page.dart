import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/logo.png', height: 240),
            ),

            const SizedBox(height: 48),

            // title
            Text(
              "A S I C S    S N E A K E R S",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            // sub title
            Text(
              "b y   R A I",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            const SizedBox(height: 48),

            // start now button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(),
                  )
              ),
              child: Container(
                margin: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    "Shop Now!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
