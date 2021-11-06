import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen/widgets/CategoryBottom.dart';
import 'package:medical_webapp/screen/widgets/CategoryTop.dart';
import 'package:medical_webapp/screen_config.dart';
// import 'package:medical_webapp/screen/widgets/category_card.dart';

import 'CategoryMiddle.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: 59.02*SizeConfig.heightMultiplier,
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 14.61*SizeConfig.widthMultiplier,
                     bottom: 1.736*SizeConfig.heightMultiplier),
                    child: Text("What would you like to do today",
                        style: GoogleFonts.acme(
                            fontWeight: FontWeight.bold, fontSize: 2.43*SizeConfig.textMultiplier)),
                  ),
                ],
              ),
              SizedBox(height: 1.38*SizeConfig.heightMultiplier),
              Row(
                children: [
                
                    CategoryTop(
                      // colour:Color(0xFFffdae0),
                      title: "Consult\nDoctors Online",
                       imgurl: 'assets/consult.png', 
                       subtitle: '350 off on First Consultation',),
                  
                  SizedBox(
                    width: 8.52*SizeConfig.widthMultiplier,
                  ),
                  Padding(
                      padding:  EdgeInsets.fromLTRB(1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier,
                       1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier), 
                      child: CategoryTop(
                      // colour: Color(0xFFffdae0), 
                      title: 'Book\nLab Tests',
                      imgurl: 'assets/consult.png',
                      subtitle: '300 off on Second Consultation',)),
                ],
              ),
              Row(
                children: [
                  CategoryMiddle(
                    imgurl: 'assets/xray.png', 
                    subtitle: 'Diabetes,Thyroid', 
                    title: 'At-Home\nCare Plans',),
                  SizedBox(
                    width: 1.21*SizeConfig.widthMultiplier,
                  ),
                  CategoryMiddle(
                    imgurl: 'assets/medicines.png',
                     subtitle: 'Same day deliviey', 
                     title: 'Order medicines',),
                  SizedBox(
                    width: 1.21*SizeConfig.widthMultiplier,
                  ),
                  CategoryMiddle(
                    imgurl: 'assets/phone.png',
                     subtitle: 'Know your risk level', 
                     title: 'Start Self-check',),
                ],
              ),
              SizedBox(
                height: 2.08*SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier,1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier),
                    child: CategoryBottom(),
                  ),
                  SizedBox(
                    width: 8.52*SizeConfig.widthMultiplier,
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier,1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier),
                 
                    child: CategoryBottom(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
