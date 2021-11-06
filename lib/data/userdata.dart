// import 'package:flutter/foundation.dart';

class Category{
  final String imgurl;
  final String title;
  final String subtitile;

  Category({required this.imgurl, required this.title, required this.subtitile});
}


List<Category> data =[
  Category(imgurl: "assets/first.png", subtitile: 'Seasonal Flus,Stomach issues,Headaches', title: 'Physician',
  ),
  Category(imgurl: "assets/secondd.png", subtitile: 'Eye strain,Dry eyes,\nVision issues', title: 'Eye Specialist',
  ),
  Category(imgurl: "assets/third.png", subtitile: 'PCOD,Period Issues, Pregnancy', title: 'Gynecologist',
  ),
  Category(imgurl: "assets/fourth.png", subtitile: 'Depression,Anxiety,OCD\nEating Disorder', title: 'Psychotherapist',
  ),
  Category(imgurl: "assets/fifth.png", subtitile: 'Vomiting,Cough,Stomach Issues for your child', title: 'Child Specialist',
  ),
  Category(imgurl: "assets/sixth.png", subtitile: 'Toothache,bad breadth,Gum problems,Ulcers', title: 'Dentist',
  ),
  Category(imgurl: "assets/seventh.png", subtitile: 'Backpain,knee pain,Sprains,Fractures', title: 'Orthopedician',
  ),
  Category(imgurl: "assets/eight.png", subtitile: 'Seasonal Flus,Stomach issues,Headaches', title: 'Physician',
  ),
];

class Health{
  final String toptitle;
  final String middletitle;
  final String downtitle;

  Health({required this.toptitle, required this.middletitle, required this.downtitle});

}


List<Health> health =[
  Health(downtitle:'₹899', middletitle: 'Full\nBody Check', toptitle: '51+ Tests' ),
  Health(downtitle:'₹1499', middletitle: 'Advanced\nBody Check', toptitle: '75+ Tests' ),
  Health(downtitle:'₹2999', middletitle: 'Comprehensive Full\nBody Check\nMens', toptitle: '85+ Tests' ),
  Health(downtitle:'₹2999', middletitle: 'Comprehensive Full\nBody Check\nWomens', toptitle: '36+ Tests' ),
];