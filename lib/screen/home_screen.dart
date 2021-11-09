import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_webapp/screen/Consultation.dart';
import 'package:medical_webapp/screen/Health_portion.dart';
import 'package:medical_webapp/screen/Self_checkbar.dart';
import 'package:medical_webapp/screen/menu_drawer.dart';
import 'package:medical_webapp/screen/widgets/Featured.dart';
import 'package:medical_webapp/screen/widgets/category.dart';
import 'package:medical_webapp/screen/widgets/responisve.dart';
// import 'package:medical_webapp/screen/widgets/category_card.dart';
import 'package:medical_webapp/screen/widgets/top_bar_contents.dart';
import 'package:medical_webapp/screen_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < SizeConfig.heightMultiplier * 0.40
        ? _scrollPosition / (SizeConfig.heightMultiplier * 0.40)
        : 1;

    return Scaffold(
        
        appBar:screenSize.width <800 ? AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(_opacity),
          title: Text("MFine",
          style: TextStyle(
            fontSize: 1.38*SizeConfig.textMultiplier,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
        ) :PreferredSize(
          child: TopBarContents(_opacity),
          preferredSize: Size(SizeConfig.widthMultiplier,
           6.94*SizeConfig.heightMultiplier),
        ),
        drawer: MenuDrawer(),
        body:Responsive(
          mobile: _HomeScreenMobile(),
          desktop: _HomeScreenDesktop(screenSize: screenSize,),
          tablet: _HomeScreenTablet(),
          
        )
                

                );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  

  final Size screenSize;

  const _HomeScreenDesktop({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              // padding: EdgeInsets.fromLTRB(200, 40, 0, 20),
              child: Stack(
                children: [
                  Image.asset("assets/background.png"),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(18.27*SizeConfig.widthMultiplier, 8.33*SizeConfig.heightMultiplier, 0, 0),
                    child: Text("MFine - one app for all \nyour healthcare needs",
                    style: TextStyle(
                      fontSize: 2.08*SizeConfig.textMultiplier,
                      color: Colors.white
                    ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10.96*SizeConfig.widthMultiplier, 16.31*SizeConfig.heightMultiplier, 0, 3.47*SizeConfig.heightMultiplier),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Download Mfine App",
                        style: TextStyle(fontSize: 1.73*SizeConfig.textMultiplier),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.red,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        primary: Colors.redAccent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.09*SizeConfig.widthMultiplier, vertical: 1.38*SizeConfig.heightMultiplier),
                        textStyle: TextStyle(
                            fontSize: 2.08*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  
                ],
              )
              ),
              SizedBox(height: 3.47*SizeConfig.heightMultiplier,),
              Category(),
              Featured(),
              Consult(),
              HealthPortion(),
              SelfCheck(),
    
      ],
          // alignment: Alignment.topCenter,
         
              
    
              ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  const _HomeScreenMobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


class _HomeScreenTablet extends StatelessWidget {
  const _HomeScreenTablet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              // padding: EdgeInsets.fromLTRB(200, 40, 0, 20),
              child: Stack(
                children: [
                  Image.asset("assets/background.png"),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(18.27*SizeConfig.widthMultiplier, 8.33*SizeConfig.heightMultiplier, 0, 0),
                    child: Text("MFine - one app for all \nyour healthcare needs",
                    style: TextStyle(
                      fontSize: 2.08*SizeConfig.textMultiplier,
                      color: Colors.white
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.96*SizeConfig.widthMultiplier, 16.31*SizeConfig.heightMultiplier, 0, 3.47*SizeConfig.heightMultiplier),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Download Mfine App",
                        style: TextStyle(fontSize: 1.73*SizeConfig.textMultiplier),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.red,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        primary: Colors.redAccent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.09*SizeConfig.widthMultiplier, vertical: 1.38*SizeConfig.heightMultiplier),
                        textStyle: TextStyle(
                            fontSize: 2.08*SizeConfig.textMultiplier, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  
                ],
              )
              ),
              SizedBox(height: 3.47*SizeConfig.heightMultiplier,),
              Category(),
              Featured(),
              Consult(),
              HealthPortion(),
              SelfCheck(),
    
      ],
          // alignment: Alignment.topCenter,
         
              
    
              ),
      

      
    );
  }
}