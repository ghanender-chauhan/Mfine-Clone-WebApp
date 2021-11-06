import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/data/userdata.dart';

class HealthPortion extends StatelessWidget {
  const HealthPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130, top: 20),
                  child: Text("Health Checks and lab Test",
                      style: GoogleFonts.acme(
                          fontSize: 35, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Flexible(
              child: Container(
                width: 1200,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.3,
                    ),
                    itemCount: health.length,
                    itemBuilder: (BuildContext ctx, int i) => Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        decoration: BoxDecoration(
                          // color:Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Color(0xFFfbdbd1), Color(0xFFf1e3f5)]),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                height: 60,
                                // width: ,
                                top: 22,
                                left: 28,
                                child: Text(
                                  health[i].toptitle,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )),
                            Positioned(
                                left: 30,
                                top: 60,
                                child: Text(
                                  health[i].middletitle,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                top: 140,
                                left: 30,
                                child: Text(
                                  health[i].downtitle,
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        ))),
              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(left: 145),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFfbdbd1), Color(0xFFf1e3f5)]),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        left: 170,
                        top: 20,
                        child: Text(
                          "2+ Tests",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.redAccent),
                        )),
                    Positioned(
                        left: 170,
                        top: 70,
                        child: Text(
                          "Diabetes\nScreening",
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      child: Image.asset("assets/second.png"),
                      height: 120,
                      width: 120,
                      right: 0,
                      top: 40,
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(left: 70),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFfbdbd1), Color(0xFFf1e3f5)]),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        left: 100,
                        top: 20,
                        child: Text(
                          "2+ Tests",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.redAccent),
                        )),
                    Positioned(
                        left: 100,
                        top: 70,
                        child: Text(
                          "Diabetes\nScreening",
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      child: Image.asset("assets/second.png"),
                      height: 120,
                      width: 120,
                      right: 0,
                      top: 40,
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 150,
                      margin: EdgeInsets.only(left: 70),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFfbdbd1), Color(0xFFf1e3f5)]),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        left: 100,
                        top: 20,
                        child: Text(
                          "2+ Tests",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.redAccent),
                        )),
                    Positioned(
                        left: 100,
                        top: 70,
                        child: Text(
                          "Diabetes\nScreening",
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      child: Image.asset("assets/second.png"),
                      height: 120,
                      width: 120,
                      right: 0,
                      top: 40,
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

// class Healthcard extends StatelessWidget {
//   const Healthcard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.only(left: 30,top: 20),
    //   decoration: BoxDecoration(
    //   // color:Colors.amber,
    //   borderRadius: BorderRadius.circular(20),
    //   gradient: LinearGradient(colors: [Color(0xFFfbdbd1),Color(0xFFf1e3f5)]

    //   ),),
      
      
    //       child: Stack(
    //         children: [
    //           Positioned(
    // height: 60,
    // // width: ,
    // top: 22,
    // left: 28,
    // child: Text("51+ Tests",
    // style: GoogleFonts.poppins(
    //   fontSize: 20,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.red
    // ),)),
    //           Positioned(
    // left: 30,
    // top: 60,
    // child: Text("Full\nBody Check",
    // style: GoogleFonts.poppins(
    //   fontSize: 20,
    //   fontWeight: FontWeight.bold
    // ),)),
    
    // Positioned(top: 120,
    // left: 30,
    //   child: Text("₹899",
    // style: GoogleFonts.poppins(
    //   fontSize: 25,
    //   fontWeight: FontWeight.bold,
      
    // ),))
    //         ],
    //       ));
//   }
// }