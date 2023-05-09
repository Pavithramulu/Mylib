import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'images.dart';
import 'onscreen.dart';
import 'onscreen1.dart';
import 'onscreen2.dart';
import 'onscreen3.dart';
import 'onscreen4.dart';
import 'onscreen5.dart';
import 'onscreen6.dart';
import 'otp1.dart';
import 'ottlogin.dart';

class VideosEditor extends StatefulWidget {
  const VideosEditor({Key? key}) : super(key: key); ///// 1st page

  get child => null;

  @override
  State<VideosEditor> createState() => _VideosEditorState();
}

class _VideosEditorState extends State<VideosEditor> {

  final page = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.black87,
        //    leading :Padding(
        //      padding: const EdgeInsets.all(8.0),
        //      child: Row(
        //   children: [
        //     Container(
        //       width: 50,
        //       height: 40,
        //       color: Colors.black,
        //       child: const CircleAvatar(
        //         backgroundImage: AssetImage('asset/ottfrontlogo.png'),
        //         radius: 10,
        //       ),),
        //
        //   ],
        // ),
        //    ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Container(
              width: 60,
              height: 60,
              color: Colors.black,
              child: const CircleAvatar(
                backgroundImage: AssetImage('asset/v2.png'),
                radius: 10,
              ),),
            SizedBox(
              width: 310,
            ),

            ElevatedButton(
                onPressed: (){
                  if(page.currentState!.validate())
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ProfilePage()),
                    );
                  }
                }, child:  Text("Profile")),
          ],
        ),
        // title:
      ),

      body:

      SingleChildScrollView(

        child: Form(
          key: page,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     const Padding(
              //       padding: EdgeInsets.only(top: 8,left: 8),
              //       child: Icon(Icons.menu_rounded,color: Colors.black,),
              //     ),
              //     SizedBox(width: 250,),
              //     Padding(
              //       padding: EdgeInsets.only(top: 5,right: 5),
              //       child: Icon(Icons.search_rounded,color: Colors.black,),
              //     ),
              //     ElevatedButton(
              //         onPressed: (){
              //           if(page.currentState!.validate())
              //           {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(builder: (context) =>  Ottlogin()),
              //             );
              //           }
              //         }, child: const Text("login")),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // OutlinedButton(
                    //   onPressed: () {
                    //     debugPrint('Received click');
                    //     if(page.currentState!.validate())
                    //     {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(builder: (context) =>  Onscreen6()),
                    //       );
                    //     }
                    //   },
                    //   child:  Text(
                    //     'TV',
                    //     style: GoogleFonts.lato(
                    //       textStyle: Theme.of(context).textTheme.headline4,
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w700,
                    //       fontStyle: FontStyle.italic,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                        if(page.currentState!.validate())
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Onscreen()),
                          );
                        }
                      },
                      child: Text('Moveis',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.white

                      ),),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                        if(page.currentState!.validate())
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Onscreen1()),
                          );
                        }
                      },
                      child: Text('Web Series',
                        style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.white

                        ),),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        debugPrint('Received click');
                        if(page.currentState!.validate())
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Onscreen4()),
                          );
                        }
                      },
                      child: Text('Sports',
                        style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.white

                        ),),
                    )
                  ],
                ),
              ),
              // List View1
              Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: Container(
                  color: Colors.black,
                  height: 350,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16/9,
                      viewportFraction: 1.2,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      // enlargeFactor: .,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: latest.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                    {
                      return
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height:300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(latest[itemIndex].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Latest & Trending",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
              ), //CarouselSlider.builder
              Container(
                height: 200,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tren.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>   Onscreen()),
                            );
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(tren[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  // child: Image(image: AssetImage(tren[index].image),),
                                ),
                                Text(
                                    tren[index].text,
                                  style: GoogleFonts.alike(color: Colors.white,),

                                ),
                              ],
                            ),


                          ),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Horror Movies",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ), //CarouselSlider.builder
              Container(
                height: 200,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: horor.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Onscreen2() ),);
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(horor[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  // child: Image(image: AssetImage(tren[index].image),),
                                ),
                                Text(
                                  horor[index].text,
                                  style: GoogleFonts.alike(color: Colors.white,),

                                ),
                              ],
                            ),


                          ),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Love Movies",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ), //CarouselSlider.builder
              Container(
                height: 200,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movei.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Onscreen5() ),);
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(movei[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  // child: Image(image: AssetImage(tren[index].image),),
                                ),
                                Text(
                                  movei[index].text,
                                  style: GoogleFonts.alike(color: Colors.white,),

                                ),
                              ],
                            ),


                          ),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Web Series",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ), //CarouselSlider.builder
              Container(
                height: 200,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: serial.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Onscreen1() ),);
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(serial[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  // child: Image(image: AssetImage(tren[index].image),),
                                ),
                                Text(
                                  serial[index].text,
                                  style: GoogleFonts.alike(color: Colors.white,),

                                ),
                              ],
                            ),


                          ),
                        ),
                      );
                    }
                ),
              ),//horor
              // Padding(
              //   padding: const EdgeInsets.only(left: 10),
              //   child: Text("Popular Action Movies",
              //     style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              // ), //CarouselSlider.builder
              // Container(
              //   height: 200,
              //   color: Colors.black,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: action.length,
              //       itemBuilder: (BuildContext context,index)
              //       {
              //         return Padding(
              //           padding: const EdgeInsets.all(5.0),
              //           child: GestureDetector(
              //             onTap: (){
              //               Navigator.push(context, MaterialPageRoute(
              //                   builder: (context) => Onscreen3() ),);
              //             },
              //             child: Container(
              //               height: 180,
              //               width: 150,
              //               color: Colors.black,
              //               child: Column(
              //                 children: [
              //                   Container(
              //                     height: 170,
              //                     decoration: BoxDecoration(
              //                       image: DecorationImage(
              //                         image: AssetImage(action[index].image),
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //
              //                     // child: Image(image: AssetImage(tren[index].image),),
              //                   ),
              //                   Text(
              //                     action[index].text,
              //                     style: GoogleFonts.alike(color: Colors.white,),
              //
              //                   ),
              //                 ],
              //               ),
              //
              //
              //             ),
              //           ),
              //         );
              //       }
              //   ),
              // ),  //action
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Sports",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ), //CarouselSlider.builder
              Container(
                height: 200,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sports.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Onscreen4() ),);
                          },
                          child:  Container(
                            height: 180,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(sports[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  // child: Image(image: AssetImage(tren[index].image),),
                                ),
                                Text(
                                  sports[index].text,
                                  style: GoogleFonts.alike(color: Colors.white,),

                                ),
                              ],
                            ),


                          ),
                        ),
                      );
                    }
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10),
              //   child: Text("Tv Channels",
              //     style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              // ), //CarouselSlider.builder
              // Container(
              //   height: 200,
              //   color: Colors.black,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: chennal.length,
              //       itemBuilder: (BuildContext context,index)
              //       {
              //         return Padding(
              //           padding: const EdgeInsets.all(5.0),
              //           child: GestureDetector(
              //             onTap: (){
              //               Navigator.push(context, MaterialPageRoute(
              //                   builder: (context) => Onscreen6() ),);
              //             },
              //             child: Container(
              //               height: 180,
              //               width: 150,
              //               color: Colors.black,
              //               child: Column(
              //                 children: [
              //                   Container(
              //                     height: 170,
              //                     decoration: BoxDecoration(
              //                       image: DecorationImage(
              //                         image: AssetImage(chennal[index].image),
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //
              //                     // child: Image(image: AssetImage(tren[index].image),),
              //                   ),
              //                   Text(
              //                     chennal[index].text,
              //                     style: GoogleFonts.alike(color: Colors.white,),
              //
              //                   ),
              //                 ],
              //               ),
              //
              //
              //             ),
              //           ),
              //         );
              //       }
              //   ),
              // ),  //tv channel
              //latest
              //List View
              //GridView.builder
            ],
          ),
        ),
      ),
    );
  }
}