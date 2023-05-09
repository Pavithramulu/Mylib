import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:netcomott/vpage.dart';

import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

import 'images.dart';

class Onscreen3 extends StatefulWidget {
  const Onscreen3({Key? key}) : super(key: key);

  @override
  State<Onscreen3> createState() => _Onscreen3State();
}

class _Onscreen3State extends State<Onscreen3> {


  late FlickManager flickManager;

  late VideoPlayerController videoPlayerController;


  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 50,
                floating: false,
                pinned: true,
                leading: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => VideosEditor() ),);
                    },
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                width: 420,
                height: 300,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 170,
                      width: double.infinity,
                      color: Colors.black,
                      child: Column(
                        children: [
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: Icon(Icons.video_collection_outlined,color: Colors.amberAccent,),
                          //     ),
                          //     Text(" See more videos >>",style: textas,),
                          //
                          //   ],
                          // ),
                          //  Padding(
                          //    padding: const EdgeInsets.all(8.0),
                          //    child: Container(
                          //     width: 350,
                          //     height: 50,
                          //     color: Colors.white24,
                          //
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //         // if(keys.currentState!.validate())
                          //         {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(builder: (context) => const VideosEditor()),
                          //           );
                          //         }
                          //
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Colors.black12,
                          //         // shape: RoundedRectangleBorder(
                          //         //   borderRadius: BorderRadius.circular(10),
                          //         // ),
                          //       ),
                          //       child:  Text('Rent HD ₹99',style: textas,
                          //       ),
                          //     ),
                          // ),
                          //  ),
                          //  Padding(
                          //    padding: const EdgeInsets.all(8.0),
                          //    child: Container(
                          //     width: 350,
                          //     height: 50,
                          //     color: Colors.white24,
                          //
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //         // if(keys.currentState!.validate())
                          //         {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(builder: (context) => const VideosEditor()),
                          //           );
                          //         }
                          //
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Colors.black12,
                          //         // shape: RoundedRectangleBorder(
                          //         //   borderRadius: BorderRadius.circular(20),
                          //         // ),
                          //       ),
                          //       child:  Text('More purchase option',style: textas,
                          //       ),
                          //     ),
                          // ),
                          //  ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("The film Master is about JD a Personality Development professor. He is addicted to alcohol due to depression. ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize:18),),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.only(top: 5),
                          //       child: Column(
                          //         children: [
                          //           Icon(Icons.video_collection,color: Colors.white,),
                          //           Text("Trailer",style: textas,),
                          //         ],
                          //       ),
                          //     ),
                          //     Column(
                          //       children: [
                          //         Icon(Icons.add,color: Colors.white,),
                          //         Text("Watch list",style: textas,),
                          //       ],
                          //     ),
                          //     Column(
                          //       children: [
                          //         Icon(Icons.share,color: Colors.white,),
                          //         Text("Share",style: textas,),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('asset/vj1.png'),
                                  radius: 10,
                                ),),
                              Container(
                                width: 70,
                                height: 70,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('asset/kv1.png'),
                                  radius: 10,
                                ),),
                              Container(
                                width: 70,
                                height: 70,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('asset/dh1.png'),
                                  radius: 10,
                                ),),
                              Container(
                                width: 70,
                                height: 70,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('asset/sh1.png'),
                                  radius: 10,
                                ),),
                              Container(
                                width: 70,
                                height: 70,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('asset/kgf1.png'),
                                  radius: 10,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Customer aslo watched",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 468,
                      child: GridView.builder(
                          physics: new NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 3,
                            childAspectRatio: 1/1.5,
                          ),
                          itemCount: latest.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image:  DecorationImage(image: AssetImage(action[index].image),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(8),
                                      // fit: BoxFit.fill,
                                    ),
                                    // borderRadius: BorderRadius.circular(10)),
                                  ),
                                  Text(
                                    action[index].text,
                                    style: GoogleFonts.alike(color: Colors.white,),

                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // child: Column(
        //
        //     children: [
        //     Container(
        //       width: 420,
        //       height: 250,
        //       child: FlickVideoPlayer(
        //         flickManager: flickManager,
        //       ),
        //     ),
        //     SingleChildScrollView(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Container(
        //             height: 300,
        //             width: double.infinity,
        //             color: Colors.black,
        //               child: Column(
        //                 children: [
        //                   Row(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //
        //                     children: [
        //                       Icon(Icons.shopping_bag_rounded,color: Colors.amberAccent,),
        //                       Text(" Available to Rent",style: textas,),
        //
        //                     ],
        //                   ),
        //                    Padding(
        //                      padding: const EdgeInsets.all(8.0),
        //                      child: Container(
        //                       width: 350,
        //                       height: 50,
        //                       color: Colors.white24,
        //
        //                       child: ElevatedButton(
        //                         onPressed: () {
        //                           // if(keys.currentState!.validate())
        //                           {
        //                             Navigator.push(
        //                               context,
        //                               MaterialPageRoute(builder: (context) => const VideosEditor()),
        //                             );
        //                           }
        //
        //                         },
        //                         style: ElevatedButton.styleFrom(
        //                           backgroundColor: Colors.black12,
        //                           // shape: RoundedRectangleBorder(
        //                           //   borderRadius: BorderRadius.circular(10),
        //                           // ),
        //                         ),
        //                         child:  Text('Rent HD ₹99',style: textas,
        //                         ),
        //                       ),
        //                   ),
        //                    ),
        //                    Padding(
        //                      padding: const EdgeInsets.all(8.0),
        //                      child: Container(
        //                       width: 350,
        //                       height: 50,
        //                       color: Colors.white24,
        //
        //                       child: ElevatedButton(
        //                         onPressed: () {
        //                           // if(keys.currentState!.validate())
        //                           {
        //                             Navigator.push(
        //                               context,
        //                               MaterialPageRoute(builder: (context) => const VideosEditor()),
        //                             );
        //                           }
        //
        //                         },
        //                         style: ElevatedButton.styleFrom(
        //                           backgroundColor: Colors.black12,
        //                           // shape: RoundedRectangleBorder(
        //                           //   borderRadius: BorderRadius.circular(20),
        //                           // ),
        //                         ),
        //                         child:  Text('More purchase option',style: textas,
        //                         ),
        //                       ),
        //                   ),
        //                    ),
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                     children: [
        //                       Column(
        //                         children: [
        //                           Icon(Icons.video_collection,color: Colors.white,),
        //                           Text("Trailer",style: textas,),
        //                         ],
        //                       ),
        //                       Column(
        //                         children: [
        //                           Icon(Icons.add,color: Colors.white,),
        //                           Text("Watch list",style: textas,),
        //                         ],
        //                       ),
        //                       Column(
        //                         children: [
        //                           Icon(Icons.share,color: Colors.white,),
        //                           Text("Share",style: textas,),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Text("The film Master is about JD a Personality Development professor. He is addicted to alcohol due to depression. ",style: textas,),
        //                   ),
        //                 ],
        //               ),
        //           ),
        //           Container(
        //             height: 45,
        //             width: double.infinity,
        //             color: Colors.black,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Text("Customer aslo watched",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
        //             ),
        //           ),
        //           Container(
        //             color: Colors.black,
        //             height: 200,
        //             child: GridView.builder(
        //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //                   crossAxisCount: 3,
        //                   crossAxisSpacing: 8,
        //                   mainAxisSpacing: 3,
        //                   childAspectRatio: 1/1.3,
        //                 ),
        //                 itemCount: latest.length,
        //                 itemBuilder: (BuildContext ctx, index) {
        //                   return Padding(
        //                     padding: const EdgeInsets.only(top: 5),
        //                     child: Column(
        //                       children: [
        //                         Container(
        //                           height: 130,
        //                           alignment: Alignment.center,
        //                           decoration: BoxDecoration(
        //                               color: Colors.white,
        //                               image:  DecorationImage(image: AssetImage(latest[index].image),
        //                                   fit: BoxFit.cover),
        //                             borderRadius: BorderRadius.circular(8),
        //                             // fit: BoxFit.fill,
        //                           ),
        //                           // borderRadius: BorderRadius.circular(10)),
        //                         ),
        //
        //                       ],
        //                     ),
        //                   );
        //                 }),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //
        //
        //   ],
        // ),
      ),
    );
  }
}
