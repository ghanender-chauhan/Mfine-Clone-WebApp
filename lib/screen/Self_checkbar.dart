import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelfCheck extends StatelessWidget {
  const SelfCheck({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: Colors.white,
      child: Column(
        children: [
          Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130, top: 20),
                  child: Text("Start a Self Check",
                      style: GoogleFonts.acme(
                          fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                

              ],
            ),
        ],
      ),
      
      
    );
  }
}