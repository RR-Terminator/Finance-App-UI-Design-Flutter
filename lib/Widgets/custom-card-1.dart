import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key,
    required this.color,
    required this.icon,
    required this.section,
    required this.count
  });

  final Color color;
  final Icon icon;
  final String  count;
  final String section;


  @override
  Widget build(BuildContext context) {
    return Container(

      width: 150,
      height: 170,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: color
      ),
      child: Column(

        children: [

           Padding(
            padding: const EdgeInsets.only(top: 30),
            child: icon,
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
              child: Text( count, style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child:  Text(section),
          )
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({
    super.key,
    required this.color,
    required this.icon,
    required this.section,
    required this.count
  });

  final Color color;
  final Icon icon;
  final String  count;
  final String section;

  @override
  Widget build(BuildContext context) {
    return  Container(

      width: 150,
      height: 200,
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: color
      ),
      child: Column(

        children: [

           Padding(
            padding: const EdgeInsets.only(top: 50),
            child: icon,
          ),
          Container(
              padding: const EdgeInsets.only(top: 15),
              child:  Text(count , style:  const TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child:  Text(section),
          )
        ],
      ),
    );
  }
}


