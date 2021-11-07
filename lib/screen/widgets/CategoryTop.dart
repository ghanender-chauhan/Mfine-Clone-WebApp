import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen/widgets/responisve.dart';
import 'package:medical_webapp/screen_config.dart';

class CategoryTop extends StatelessWidget {
  final Color colour = Color(0xFFffdae0);
  final String title;
  final String imgurl;
  final String subtitle;
  CategoryTop({
    required this.title,
    required this.imgurl,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.height / 5
              : screenSize.height * 0.24,
          width: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.width / 2.2
              : screenSize.width / 2.5,
          margin: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context)
                  ? screenSize.width / 35
                  : 12.18 * SizeConfig.widthMultiplier),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
            // color: Color(0xFFffdae0),
          ),
        ),
        Positioned(
            height: 9.5 * SizeConfig.heightMultiplier,
            
            width: 15.83 * SizeConfig.widthMultiplier,
            
            right: ResponsiveWidget.isSmallScreen(context)
            ? -2.8 * SizeConfig.widthMultiplier
            : SizeConfig.widthMultiplier*0,
            
            top: -1.1 * SizeConfig.heightMultiplier,
            child: Image.asset("$imgurl")),
        
        Container(
          margin: EdgeInsets.fromLTRB( ResponsiveWidget.isSmallScreen(context)? 8 * SizeConfig.widthMultiplier
          : SizeConfig.widthMultiplier*18,
            
            2.5 * SizeConfig.heightMultiplier, 0, 0),
          // color: Colors.indigo,
          height: 11 * SizeConfig.heightMultiplier,
          width: 30.45 * SizeConfig.widthMultiplier,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "$title",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? SizeConfig.textMultiplier *2
                            : SizeConfig.textMultiplier * 1.3),
                  )),
              SizedBox(
                height: 0.34 * SizeConfig.heightMultiplier,
              ),
              Container(
                  // margin: EdgeInsets.only(b),
                  height: 3.81 * SizeConfig.heightMultiplier,
                  width: 36.54 * SizeConfig.widthMultiplier,

                  // color:Colors.red,
                  alignment: Alignment.topLeft,
                  child: Text(
                    "$subtitle",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? SizeConfig.textMultiplier *2
                            : SizeConfig.textMultiplier * 1.3,
                        color: Colors.blue[600]),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
