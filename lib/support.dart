import 'package:flutter/material.dart';
import 'package:flutter_application_home_booking/order.dart';
import 'package:flutter_application_home_booking/register.dart';

class support extends StatefulWidget {
  const support({super.key});

  @override
  State<support> createState() => _supportState();
}

class _supportState extends State<support> {
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
                    "Get the service",
                    style:
                        TextStyle(color: Colors.yellow.shade700, fontSize: 20),
                  ),
                  Text(
                    "Full Support",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 31, 74),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "We are here for you and our support",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    '24/7 team hands to help you',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/customersupport.jpg',
                    width: 500, // Adjust width as needed
                    height: 350, // Adjust height as needed
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
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
                              builder: (context) => const order()),
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
