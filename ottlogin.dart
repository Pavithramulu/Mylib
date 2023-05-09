import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netcomott/verifypage.dart';


class Ottlogin extends StatefulWidget {
   Ottlogin({Key? key}) : super(key: key);  //2nd page

  @override
  State<Ottlogin> createState() => _OttloginState();

}

class _OttloginState extends State<Ottlogin> {

  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      body:

      SingleChildScrollView(
        child: Form(
          key: keys,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 1050,
               color: Colors.black87,

                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 450,
                          height: 250,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/ottfrontlogo.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 460,
                            height: 450,
                            color: Colors.black87,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                    width: 350,
                                    color: Colors.black,
                                    alignment: AlignmentDirectional.centerStart,
                                    child: const Text("NETCOM ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),

                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,) ,
                                    ),
                                    height: 180,
                                    width: 360,
                                    // color: Colors.black87,
                                    child:
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            keyboardType: TextInputType.text,
                                            inputFormatters: <TextInputFormatter>[
                                              // FilteringTextInputFormatter.digitsOnly,
                                              //LengthLimitingTextInputFormatter(10)
                                            ],
                                            style: const TextStyle(color: Colors.white,fontSize: 20),
                                            // keyboardType: TextInputType.text,
                                            validator: (val)
                                            {
                                              if (val == null || val.isEmpty)
                                              {
                                                return 'Please Enter Your Name';
                                              }
                                            },
                                            decoration:  const InputDecoration(
                                              hintText: 'Enter Your Name',
                                              hintStyle: TextStyle(color: Colors.white),
                                              // border: OutlineInputBorder(
                                              //   borderRadius: BorderRadius.all(Radius.circular(5)),
                                              //
                                              // ),
                                              // focusedBorder: ,
                                              // enabledBorder: ,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <TextInputFormatter>[
                                              FilteringTextInputFormatter.digitsOnly,
                                              LengthLimitingTextInputFormatter(10)
                                            ],
                                            style: const TextStyle(color: Colors.white,fontSize: 20),
                                            // keyboardType: TextInputType.text,
                                            validator: (val)
                                            {
                                              if (val == null || val.isEmpty)
                                              {
                                                return 'Please Enter Your Password';
                                              }
                                            },
                                              decoration: const InputDecoration(
                                                hintText: 'Enter Your Mobile Number',
                                                hintStyle: TextStyle(color: Colors.white),
                                                // border: OutlineInputBorder(
                                                //   borderRadius: BorderRadius.all(Radius.circular(5)),
                                                // ),
                                              // focusedBorder: ,
                                              // enabledBorder: ,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: SizedBox(
                                    width: 80,
                                    height: 50,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          if(keys.currentState!.validate())
                                          {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const Verify()),
                                            );
                                          }
                                        },
                                      child: const Text("Login",style: TextStyle(fontSize: 18),),
                                      style: ElevatedButton.styleFrom(
                                      primary: Colors.white24,

                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}




