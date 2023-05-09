import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'images.dart';
import 'otp1.dart';
import 'ottlogin.dart';

class OttFrontPage extends StatefulWidget {
  const OttFrontPage({Key? key}) : super(key: key);

  @override
  State<OttFrontPage> createState() => _OttFrontPageState();
}

class _OttFrontPageState extends State<OttFrontPage> {

  var size,height,width;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return  Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration:  const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/ottfrontlogo.png"),
                fit: BoxFit.cover
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 150),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Ottlogin() ),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xf906ebf6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text( ' Login ',style:TextStyle(fontSize: 18, color: Colors.white,),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //if(page.currentState!.validate())
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ProfilePage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xf906ebf6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text( 'Sign-up',style:TextStyle(fontSize: 18, color: Colors.white,),
                  ),
                ),
              ],
            ),
            // child: ElevatedButton(
            //   onPressed: () {
            //
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xd719a28d),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //   ),
            //   child: const Text( 'Login',style:TextStyle(fontSize: 20, color: Colors.white),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}

