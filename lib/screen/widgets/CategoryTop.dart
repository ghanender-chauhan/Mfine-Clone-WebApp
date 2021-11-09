import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

class CategoryTop extends StatelessWidget {
 final Color colour = Color(0xFFffdae0) ;
 final String title;
 final String imgurl;
 final String subtitle;
 CategoryTop({required this.title,required this.imgurl,required this.subtitle,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 13.88*SizeConfig.heightMultiplier,
          width: 60.90*SizeConfig.widthMultiplier,
          margin: EdgeInsets.only(left: 12.18*SizeConfig.widthMultiplier),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
            // color: Color(0xFFffdae0),
          ),
        ),
        Positioned(
            height: 9.02*SizeConfig.heightMultiplier,
            width: 15.83*SizeConfig.widthMultiplier,
            right: -0/24*SizeConfig.widthMultiplier,
            top: -0.902*SizeConfig.heightMultiplier,
            child: Image.asset("$imgurl")),
            
        Container(
          margin: EdgeInsets.fromLTRB(18.27*SizeConfig.widthMultiplier, 
          4.87*SizeConfig.heightMultiplier, 0, 0),
          // color: Colors.indigo,
          height: 9.72*SizeConfig.heightMultiplier,
          width: 30.45*SizeConfig.widthMultiplier,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "$title",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.38*SizeConfig.textMultiplier),
                  )),
              SizedBox(
                height: 0.34*SizeConfig.heightMultiplier,
              ),
              Container(
                // margin: EdgeInsets.only(b),
                height: 3.81*SizeConfig.heightMultiplier,
                width: 36.54*SizeConfig.widthMultiplier,
                
                // color:Colors.red,
                  alignment: Alignment.topLeft,
                  child: Text(
                    "$subtitle",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.3*SizeConfig.textMultiplier,
                        color: Colors.blue[600]),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
                      
                    
                    