import 'package:flutter/material.dart';
import 'package:flutter_application_home_booking/enjoy.dart';
import 'package:flutter_application_home_booking/register.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
                    "The better way",
                    style:
                        TextStyle(color: Colors.yellow.shade700, fontSize: 20),
                  ),
                  Text(
                    "Order Anywhere",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 31, 74),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Book from home we guaranted",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'about your first choice room in advance',
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
                    'assets/order.jpg',
                    width: 500, // Adjust width as needed
                    height: 330, // Adjust height as needed
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
                              builder: (context) => const enjoy()),
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
