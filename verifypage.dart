import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netcomott/vpage.dart';


class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  var size,height,width;


  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return  Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor:Colors.black87,
      //   title: TextFormField(
      //     controller: TextEditingController(text: "verify the Phone Number"),
      //     style: TextStyle(fontSize: 18,color: Colors.white),
      //   ),
      // ),
      body:
      Container(
        width: width,
        height: height,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("We've sent an SMS with a verification code to +91 00000-00000",
                style: TextStyle(fontSize: 20,color: Colors.white) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Enter OTP",
                style: TextStyle(fontSize: 20,color: Colors.white) ,),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 320,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      //color: Colors.white12,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                      ),

                    ),
                    Container(
                      height: 30,
                      width: 30,
                      //color: Colors.white12,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      //color: Colors.white12,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                     // color: Colors.white12,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
                child: SizedBox(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                     // if(keys.currentState!.validate())
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const VideosEditor()),
                        );
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Verify',style:TextStyle( color: Colors.white,fontSize: 18),
                    ),

                  ),
                ),)
          ],
        ),
      ),
    );
  }
}
