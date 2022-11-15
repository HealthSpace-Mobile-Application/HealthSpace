import 'package:flutter/material.dart';

import 'signup.dart';

class RegisterAs extends StatefulWidget {
  const RegisterAs({Key? key}) : super(key: key);

  @override
  State<RegisterAs> createState() => _RegisterAsState();
}

class _RegisterAsState extends State<RegisterAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF179797),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFF179797),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/bglogo.jpg",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Color(0xff179797),
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "Register As",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 0,
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //minimumSize:MaterialStateProperty.all(50),
                    //maximumSize: Size(150,48),
                    //fixedSize: FixedSize(10,10),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: Text(
                    'Donor',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 0,
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //minimumSize:MaterialStateProperty.all(50),
                    //maximumSize: Size(150,48),
                    //fixedSize: FixedSize(10,10),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: Text(
                    'Patient',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 0,
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //minimumSize:MaterialStateProperty.all(50),
                    //maximumSize: Size(150,48),
                    //fixedSize: FixedSize(10,10),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: Text(
                    'Hospital',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 0,
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //minimumSize:MaterialStateProperty.all(50),
                    //maximumSize: Size(150,48),
                    //fixedSize: FixedSize(10,10),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: Text(
                    'Organization',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
