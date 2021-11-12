import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

class CategoryMiddle extends StatelessWidget {
final String title;
final String subtitle;
final String imgurl;
 final Color colour = Color(0xFFffdae0) ;

CategoryMiddle({required this.title, required this.subtitle, required this.imgurl});


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
      Container(
        margin: EdgeInsets.only(
        left: 10*SizeConfig.heightMultiplier, 
        top: 2.08*SizeConfig.heightMultiplier),
        height: 15*SizeConfig.heightMultiplier,
        width: 20*SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFf2e6ff),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 6.94*SizeConfig.heightMultiplier,
          left: 3.65*SizeConfig.widthMultiplier),
          child: Column(
            
                children: [
                  Container(
                    
                      alignment: Alignment.topLeft,
                      child: Text(
                        "$title",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 1.59*SizeConfig.textMultiplier),
                      )),
                  SizedBox(
                    height: 0.34*SizeConfig.heightMultiplier,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "$subtitle",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 1.388*SizeConfig.textMultiplier,
                            color: Color(0xFFbf80ff)),
                      ))
                ],
          ),
        ),
        
        
          ),
      Positioned(
        child: Image.asset("$imgurl"),
        height: 8.33*SizeConfig.heightMultiplier,
        width: 10*SizeConfig.heightMultiplier,
        left: 21*SizeConfig.heightMultiplier,
        top: -1*SizeConfig.heightMultiplier,
      ),
    ]);
  }
}
