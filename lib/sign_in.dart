import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_home_booking/support.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240.0,
            pinned: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: Colors.white, // Change your color here
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              titlePadding: EdgeInsets.only(bottom: 8.0),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      0.0,
                    ), // Adjust the radius as needed
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          'assets/background.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ), // Adjust the radius as needed
                    child: Container(
                      color: Color.fromARGB(179, 230, 229, 229),
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back!!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Hello there, login to continue',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/glogo.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/flogo.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ), // Border color set to black
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return const support();
                                          },
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Login Account",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 3, 31, 74))),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Don't have an Account? Sign Up",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
