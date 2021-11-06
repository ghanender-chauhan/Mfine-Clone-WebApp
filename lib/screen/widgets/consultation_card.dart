import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

class ConsultationCard extends StatelessWidget {
  final imgUrl;
  final title;
  final subtitle;
  const ConsultationCard({
    this.imgUrl,
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(height: 4.16*SizeConfig.heightMultiplier, 
        width: 7.30*SizeConfig.widthMultiplier, top: 1.04*SizeConfig.heightMultiplier, 
        child: Image.asset(imgUrl)),
        Container(

            //  color: Colors.blue,
            margin: EdgeInsets.only(left: 7.30*SizeConfig.widthMultiplier,
             top: 1.38*SizeConfig.heightMultiplier),
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.only(right: 50),
                  padding: EdgeInsets.only(left: 2.43*SizeConfig.widthMultiplier),
                  width: 21.92*SizeConfig.widthMultiplier,
                  // color: Colors.amber,
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: 1.11*SizeConfig.textMultiplier, 
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, 
                      fontSize: 1.18*SizeConfig.textMultiplier),
                )
              ],
            ))
      ],
    );
  }
}
