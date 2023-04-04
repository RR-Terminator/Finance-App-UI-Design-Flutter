import 'package:flutter/material.dart';

import 'package:charts_common/common.dart' as chart;

import 'Utils/color.dart';
import 'Widgets/stata-card.dart';

class StatPage extends StatelessWidget {
  const StatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.account_circle,
              color: c7,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: size.height-540,
              width: size.width - 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: c1,

              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 20 , left: 30),
            child:  Text("Sales Revenue ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35 ,),),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 30),
            child: StatCard(icon: Icon(Icons.percent), section: "Sales", color: c4, info: "230K",),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 30),
            child: StatCard(icon: Icon(Icons.account_circle), section: "Customers", color: c3, info: "8.549K",),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 30),
            child: StatCard(icon: Icon(Icons.filter_none), section: "Products", color: c1, info: "1.423K",),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 30),
            child: StatCard(icon: Icon(Icons.incomplete_circle_rounded), section: "Revenue", color: c2, info: "\$9745",),
          ),

        ],
      ),
    );
  }
}
