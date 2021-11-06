import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

import 'FeaturedColumn.dart';

class Featured extends StatelessWidget {
  const Featured({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFfff2f9),
      height: 40.27*SizeConfig.heightMultiplier,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18.27*SizeConfig.widthMultiplier,top: 1.38*SizeConfig.heightMultiplier),
                child: Text("Featured",
                textAlign: TextAlign.left,
                style: GoogleFonts.acme(
                fontWeight: FontWeight.bold, fontSize: 2.77*SizeConfig.textMultiplier)),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                  margin: EdgeInsets.only(left: 18.27*SizeConfig.widthMultiplier,
                  top: 1.59*SizeConfig.heightMultiplier),
                  height: 31.25*SizeConfig.heightMultiplier,
                  width: 70.64*SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  
              
                ),

                Positioned(
                  child: Container(
                  color: Colors.red,
                  height: 2.08*SizeConfig.heightMultiplier,
                  width: 17.05*SizeConfig.widthMultiplier,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 1.82*SizeConfig.widthMultiplier,top: 0.20*SizeConfig.heightMultiplier),
                    child: Text("#AskMFine",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 1.38*SizeConfig.textMultiplier,
                      color: Colors.white
                    ),),
                  ),
                ),
                top: 3.47*SizeConfig.heightMultiplier,
                left: 21.92*SizeConfig.widthMultiplier,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                       Container(margin:EdgeInsets.only(left: 21.92*SizeConfig.widthMultiplier,top: 6.94*SizeConfig.heightMultiplier),
                         child: Text("Live Q&A Sessions with our Experts on\nvarious health-related topics.",
                         style: GoogleFonts.poppins(
                           fontSize: 1.736*SizeConfig.textMultiplier,
                           color: Colors.indigo,
                           fontWeight: FontWeight.bold
                         ),
                         )
                         ),
                         
                        
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left: 1.21*SizeConfig.widthMultiplier),
                          child: Text("Join us @mfinecare on facebook!",textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                           fontSize: 1.25*SizeConfig.textMultiplier,
                           color: Colors.black,
                           fontWeight: FontWeight.bold
                         ),))
                      ],
                    )
                  ],
                ),
                Positioned(
                  height: 32.63*SizeConfig.heightMultiplier,
                  width: 60.901*SizeConfig.widthMultiplier,
                  left: 24.36*SizeConfig.widthMultiplier,
                  top: 6.94*SizeConfig.heightMultiplier,
                  child: Image.asset("assets/doctor.png"))

                ],
             
              ),
              SizedBox(width: 3.65*SizeConfig.widthMultiplier,),
              Column(
                children: [
                  FeaturedColumn(),
                  FeaturedColumn(),

                ],
              )
            ],
          )
        ],
      ),
      
    );
  }
}

