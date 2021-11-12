import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_webapp/screen/widgets/CategoryMiddle.dart';
// import 'package:medical_webapp/screen/widgets/CategoryBottom.dart';
import 'package:medical_webapp/screen/widgets/CategoryTop.dart';
import 'package:medical_webapp/screen_config.dart';
// import 'package:medical_webapp/screen/widgets/category_card.dart';



class TabCategory extends StatelessWidget {
  const TabCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: 99.30*SizeConfig.heightMultiplier,
      height: 60*SizeConfig.heightMultiplier,
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                    left: 8*SizeConfig.widthMultiplier,
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
                
                   Padding(
                     padding:  EdgeInsets.only(left: 0*SizeConfig.heightMultiplier),
                     child: CategoryTop(
                          // colour:Color(0xFFffdae0),
                          title: "Consult\nDoctors Online",
                           imgurl: 'assets/consult.png', 
                           subtitle: '350 off on First Consultation',),
                   ),
                    
                  
                  // SizedBox(
                  //   width: 3*SizeConfig.heightMultiplier,
                  // ),
                  
                       CategoryTop(
                      // colour: Color(0xFFffdae0), 
                      title: 'Book\nLab Tests',
                      imgurl: 'assets/consult.png',
                      subtitle: '300 off on Second Consultation',)
                      
                ],
              ),
              SizedBox(height: 2*SizeConfig.heightMultiplier,),
              Row(
                children: [
                  CategoryMiddle(
                    imgurl: 'assets/xray.png', 
                    subtitle: 'Diabetes,Thyroid', 
                    title: 'At-Home\nCare Plans',),

                  

                  CategoryMiddle(
                    imgurl: 'assets/medicines.png',
                     subtitle: 'Same day deliviey', 
                     title: 'Order medicines',),
                

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
                    child: CategoryTop(
                      // colour: Color(0xFFffdae0), 
                      title: 'Book\nLab Tests',
                      imgurl: 'assets/consult.png',
                      subtitle: '300 off on Second Consultation',)
                  ),
                  SizedBox(
                    width: 0*SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier,1*SizeConfig.widthMultiplier, 0.55*SizeConfig.heightMultiplier),
                 
                    child: CategoryTop(
                      // colour: Color(0xFFffdae0), 
                      title: 'Book\nLab Tests',
                      imgurl: 'assets/consult.png',
                      subtitle: '300 off on Second Consultation',)
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
