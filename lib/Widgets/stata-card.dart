import 'package:flutter/material.dart';

import '../Utils/color.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.color,
    required this.icon,
    required this.section,
    required this.info,
});
  final Color color;
  final Icon icon;
  final String section;
  final String info;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
      
        width: size.width-40,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              height:100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                color: color,
              ),
              child: icon,
            ),

            Container(

              width: 100,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Padding(
                  padding: const EdgeInsets.only(left: 1, top: 8),
                  child: Text(section , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text("Since last week", style: TextStyle(color: c7),),
                  )],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(info, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
