import 'package:flutter/material.dart';
//import 'package:untitled/screens/registeras.dart';

import 'registeras.dart';
import 'signin.dart';
import 'signup.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF179797),
      appBar: AppBar(
        backgroundColor: Color(0xff1AA3A3),
        elevation: 0,
      ),
      //backgroundColor: Color(0xFF179797),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF179797),
      // ),
      body: ListView(
        children:<Widget>[
          //Image(image: ExactAssetImage('assets/top1.jpg'),),
      //     Container(
      //     child: (
      //         Image.asset(
      //           "assets/top.jpg",)
      //           //height:560,
      //           //width:560,
      // ),
      //         width: 350,
      //         height: 150,
      // ),


          //Image.asset(
          //   // "assets/top.jpg",
          //   // //height:560,
          //   // //width:560,
          //   // ),
          // ),
      //   Container(
      //   color: Color(0xFF179797),
      //   height: 100,
      //   child: Image.asset(
      //     "assets/logo.jpg",
      //     height:60,
      //     width:60,
      //   ),
      //
      // ),
      //     Container(
      //       color: Color(0xFF179797),
      //       height: 1,
      //     ),
        Container(
          color: Color(0xFF179797),
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
              "assets/top.jpg",
              //height:560,
              //width:560,
              ),
          Image.asset(
            "assets/getstarted.jpg",
            height:500,
            width:400,
          ),
            ],),),

        Container(
          height: 100,
          width:0,
          color: Color(0xFF179797),
          child:Padding(
            padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(

                  style: ButtonStyle(
                    //minimumSize:MaterialStateProperty.all(50),
                    //maximumSize: Size(150,48),
                    //fixedSize: FixedSize(10,10),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
                        context, MaterialPageRoute(builder: (_) => RegisterAs()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 25),
                  ),
                ),
              ),
            ),
          ),

          Container(
            height: 50,
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text("Already a member?",style: TextStyle(color: Colors.white,fontSize: 15),),
                  TextButton(
                    style: ButtonStyle(alignment: Alignment.center),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    child: Text(
                      'Sign In',style: TextStyle(decoration: TextDecoration.underline,decorationColor: Colors.white,
                        decorationThickness: 1,fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20),),
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
          ),
          Container(
            color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[IconButton(
                  icon: Icon(Icons.help,size: 30,color: Colors.white,),
                  onPressed: (){},
                ),
                ],
              ),
            ),
          )
        ]
    ),
    );
  }
}
