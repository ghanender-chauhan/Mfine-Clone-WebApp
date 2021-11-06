import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

class FeaturedColumn extends StatelessWidget {
  const FeaturedColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: 1.59*SizeConfig.heightMultiplier),
         alignment: Alignment.topCenter,
          height: 14.58*SizeConfig.heightMultiplier,
          width: 66.99*SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(30)
          ),
          

        ),
          Positioned(left: 3.04*SizeConfig.widthMultiplier,
          top: 3.47*SizeConfig.heightMultiplier,
            child: Text("Covid-19 Care",
             style: GoogleFonts.poppins(
             fontSize: 1.73*SizeConfig.heightMultiplier,
             color: Colors.indigo,
             fontWeight: FontWeight.w600
           ),)),
          
          Positioned(left: 25,
          top: 90,
            child: Text("Consultations,\nRT-PCR Tests,\nTips & more",
             style: GoogleFonts.poppins(
             fontSize: 18,
             color: Colors.black,
             fontWeight: FontWeight.w700
           ),)),
           Positioned(
             child: Image.asset("assets/covid.png"),
             right: 0,
             bottom: -10,
            // top: -10,
             )
        
      ],
    );
  }
}