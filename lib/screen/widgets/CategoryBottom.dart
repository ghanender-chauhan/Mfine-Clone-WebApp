import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen_config.dart';

class CategoryBottom extends StatelessWidget {
  const CategoryBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 13.88*SizeConfig.heightMultiplier,
          width: 60.901*SizeConfig.widthMultiplier,
          margin: EdgeInsets.only(left: 12.18*SizeConfig.widthMultiplier),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFffdae0),
          ),
        ),
        Positioned(
            height: 9*SizeConfig.heightMultiplier,
            width: 15.83*SizeConfig.widthMultiplier,
            right: -0.24*SizeConfig.widthMultiplier,
            top: -0.902*SizeConfig.heightMultiplier,
            child: Image.asset("assets/consult.png")),
        Container(
          margin: EdgeInsets.fromLTRB(18.27*SizeConfig.widthMultiplier,
          5.55*SizeConfig.heightMultiplier, 0, 0),
          // color: Colors.indigo,
          height: 6.94*SizeConfig.heightMultiplier,
          width: 30.45*SizeConfig.widthMultiplier,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Consult\nDoctors Online",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.38*SizeConfig.textMultiplier),
                  )),
              SizedBox(
                height: 0.34*SizeConfig.heightMultiplier,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "250 Off on 1st Consultion",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.388*SizeConfig.textMultiplier,
                        color: Colors.blue[600]),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}




