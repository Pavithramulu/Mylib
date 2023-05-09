import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netcomott/vpage.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>   VideosEditor()),
                      );
                    },

                    child: Icon(Icons.arrow_back,color: Colors.white,)),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Profile & More',

                    style: GoogleFonts.lato(color: Colors.white,fontSize: 22),

                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/ottfrontlogo.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 819,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Name',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,) ,
                      ),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        //keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 20),
                        // keyboardType: TextInputType.text,

                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Gender',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,) ,
                      ),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        //keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 20),
                        // keyboardType: TextInputType.text,

                      ),
                    ),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Mobile Num',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,) ,
                      ),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        //keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 20),
                        // keyboardType: TextInputType.text,
                        // decoration: const InputDecoration(
                        //   hintText: 'Mobile Number',
                        //   hintStyle: TextStyle(color: Colors.blue),
                        //   // border: OutlineInputBorder(
                        //   //   borderRadius: BorderRadius.all(Radius.circular(5)),
                        //   // ),
                        //   // focusedBorder: ,
                        //   // enabledBorder: ,
                        // ),
                      ),
                    ),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Address',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25
                        ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,) ,
                      ),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        //keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 20),
                        // keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 30,
                  width: 150,
                  color: Colors.blue.shade800,
                  child: ElevatedButton(
                    onPressed: (){                  },
                    child: const Text("Create Profile",style: TextStyle(fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xf925d7e0),
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 380,bottom:30),
                  child: Text("Others",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 360,bottom:30),
                  child: Text("My Listz",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 360,bottom:30),
                  child: Text("Account",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 330,bottom:30),
                  child: Text("AppSetting",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 400,bottom:30),
                  child: Text("Help",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 360,bottom:30),
                  child: Text("Sign Out",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                ),

                // Container(
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.blue,) ,
                //   ),
                //   height: 50,
                //   width: 300,
                //   child: Text("My List",style: GoogleFonts.lato(color: Colors.white,fontSize: 25),),
                // ),


                // SizedBox(
                //   width: 80,
                //   height: 50,
                //   child: ElevatedButton(
                //     onPressed: (){},
                //     child: const Text("Login",style: TextStyle(fontSize: 18),),
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.white24,
                //
                //     ),),
                // ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
