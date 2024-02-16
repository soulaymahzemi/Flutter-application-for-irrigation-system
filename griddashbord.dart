
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatefulWidget {

  GridDashboard({super.key});

  @override
  State<GridDashboard> createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
 Items item1 = new Items(
      title: "08:00  07/12/2022",
      subtitle: "Done",
    event: "20°C",
     );

  Items item2 = new Items(
    title: "10:00 08/12/2022",
    subtitle: "Done",
    event: "24°C",
   
  );

  Items item3 = new Items(
    title: "12:00 09/12/2022",
    subtitle: "",
    event: "30°C",
    
  );

  Items item4 = new Items(
    title: "14:00 10/12/2022",
    subtitle: "Done",
    event: "36°C",
  
  );

  Items item5 = new Items(
    title: "16:00 11/12/2022",
    subtitle: "",
    event: "30°C",

  );

  Items item6 = new Items(
    title: "18:00 12/12/2022",
    subtitle: "",
    event: "45°C",
      
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = Colors.white;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 142, 225, 144), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                const Icon(Icons.sunny_snowing),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
               
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
Items({required this.title,  required this.subtitle,required this.event});
}