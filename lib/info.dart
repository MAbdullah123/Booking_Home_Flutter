import 'package:flutter/material.dart';
import 'package:flutter_application_home_booking/register.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
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
                    "Get the transactions",
                    style:
                        TextStyle(color: Colors.yellow.shade700, fontSize: 20),
                  ),
                  Text(
                    "Easy and Secure",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 31, 74),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "As soon as the booking is accepted.",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'We provide secure transactions',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/Secure.jpg',
                    width: 500,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const register()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 35,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 3, 31, 74),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(80, 80),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
