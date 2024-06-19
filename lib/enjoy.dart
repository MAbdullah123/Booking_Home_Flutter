import 'package:flutter/material.dart';

class enjoy extends StatefulWidget {
  const enjoy({super.key});

  @override
  State<enjoy> createState() => _enjoyState();
}

class _enjoyState extends State<enjoy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy your Home!!",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 31, 74),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Street.png',
                        width: 500, // Adjust width as needed
                        height: 500, // Adjust height as needed
                        fit: BoxFit
                            .contain, // Adjust the BoxFit property as needed
                      ),
                    ),
                    Center(
                      child: Text(
                        "Thanks for selecting our application",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 3, 31, 74),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
