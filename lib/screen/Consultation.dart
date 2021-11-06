import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/data/userdata.dart';

import 'widgets/consultation_card.dart';

class Consult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 420,
        width: double.infinity,
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 20),
                child: Text("Consult Specialists Online",
                    style: GoogleFonts.acme(
                        fontSize: 35, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Flexible(
            child: Container(
                width: 1300,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 2,
                  ),
                  itemCount: data.length,
                  itemBuilder: (BuildContext ctx, int i) => Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      // height: 100,
                      // width: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Color(0xFFbadceb), Color(0xFFf4e7f7)]),
                      ),
                      child: ConsultationCard(
                        imgUrl: data[i].imgurl,
                        title: data[i].title,
                        subtitle: data[i].subtitile,
                      )),
                )),
          ),
        ]));
  }
}



// class ConsultCard extends StatelessWidget {
//   // Color colour;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.only(left: 30, top: 20),
//         decoration: BoxDecoration(
//           // color:Colors.amber,
//           borderRadius: BorderRadius.circular(20),
//           gradient:
//               LinearGradient(colors: [Color(0xFFbadceb), Color(0xFFf4e7f7)]),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//                 height: 60,
//                 width: 60,
//                 top: 15,
//                 child: Image.asset("assets/first.png")),
//             Container(

//                 //  color: Colors.blue,
//                 margin: EdgeInsets.only(left: 60, top: 20),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(right: 105),
//                       child: Text(
//                         "Physician",
//                         style: GoogleFonts.poppins(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Text(
//                       "Seasonal Flus, Stomach\nissues, Headaches",
//                       style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.w600, fontSize: 17),
//                     )
//                   ],
//                 ))
//           ],
//         ));
//   }
// }
