import 'package:flutter/material.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40,bottom: 40,top: 80),
              child: Image.asset("assets/logo.jpg",),
            ),
            Text("We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style:
            TextStyle(fontSize: 40,fontWeight: FontWeight.bold, ),),
            SizedBox(
              height: 30,
            ),
            Text("Fresh items everyday",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 15,fontWeight: FontWeight.bold, ),),
            Spacer(),
            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.green ,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Spacer(),
          ],
        ),
      )
    );
  }
}
