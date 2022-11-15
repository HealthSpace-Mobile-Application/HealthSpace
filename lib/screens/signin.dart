import 'package:flutter/material.dart';

import 'home.dart';
import 'signup.dart';

//import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF179797),
      body: ListView(children: <Widget>[
        Container(
          height: 300,
          color: Colors.white,
          child: Image.asset(
            "assets/signin.jpg",
            height: 60,
            width: 60,
          ),
        ),
        Container(
          height: 50,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 15),
          child: const Text(
            "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFF179797),
            ),
          ),
        ),
        Container(
          height: 800,
          color: const Color(0xFF179797),
          child: const MyCustomForm(),
        ),
      ]),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  // Future save() async {
  //   var res = await http.post('http://localhost:8080/signup',
  //       headers: <String, String>{
  //         'Context-Type': 'application/json;charSet=UTF-8'
  //       },
  //       body: <String, String>{
  //         'email': user.email,
  //         'password': user.password
  //       });
  //   print(res.body);
  // }

  //User user = User('', '','','','','','');
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 70, 25, 20),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              // controller: TextEditingController(text: user.email),
              // onChanged: (value) {
              //   user.email = value;
              // },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your e-mail';
                } else if (RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "Enter valid email";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'E-mail address',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          // TextButton(
          //   style: ButtonStyle(alignment: Alignment.center),
          //   onPressed: (){},
          //   child: Text(
          //     'Forgot Password',style: TextStyle(color: Colors.white, fontSize: 15),),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(250, 5, 5, 5),
          //   child:FlatButton(
          //     onPressed: (){},
          //     child: Text(
          //       'Forgot Password',
          //       style: TextStyle(color: Colors.blue, fontSize: 15),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(alignment: Alignment.center),
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(color: Colors.red, width: 5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(content: Text('Processing Data')),
                      // );
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Home()));
                    }
                    //     Navigator.push(
                    //         context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  style: ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                // OutlinedButton(
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         //side: BorderSide(color: Colors.white,width: 3.0),
                //         side: BorderSide(color: Colors.red, width: 5),
                //       ),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context, MaterialPageRoute(builder: (_) => SignUp()));
                //   },
                //   child: Text(
                //     'Sign In',
                //     style: TextStyle(color: Colors.white, fontSize: 25),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.help,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
