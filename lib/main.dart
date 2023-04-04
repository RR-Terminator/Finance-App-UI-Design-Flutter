import 'package:finance_app/Utils/color.dart';
import 'package:finance_app/stat-page.dart';
import 'package:flutter/material.dart';

import 'Widgets/custom-card-1.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    title: "Finance App",
    theme: ThemeData.light(),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  Color color = c1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 75,
            ),
            SizedBox(
              width: size.width - 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      "Hello Rahul",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Icon(Icons.filter_list_outlined)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "welcome back !",
                  style: TextStyle(color: c7, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Card1(
                        color: c4,
                        icon: Icon(Icons.percent),
                        count: "230k",
                        section: "Sells",
                      ),
                      Card2(
                        color: c3,
                        icon: Icon(Icons.account_circle),
                        count: "8.549k",
                        section: "Customers",
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Card2(
                        color: c1,
                        icon: Icon(Icons.filter_none),
                        count: "1.423k",
                        section: "Products",
                      ),
                      Card1(
                        color: c2,
                        icon: Icon(Icons.incomplete_circle_sharp),
                        count: "\$9745",
                        section: "Revenue",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:Container(
        color: Colors.white,
        child:  Padding(

          padding:  const EdgeInsets.all(10),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: c1,
            tabBackgroundColor: c2,
            padding: const EdgeInsets.all(16),
            gap: 15,
            tabs:  [
              const GButton(
                icon: Icons.home,
                text: "Home",
              ),
              const GButton(
                icon: Icons.wallet,
                text: "Wallet",
              ),
              GButton(
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const StatPage()));
                },
                icon: Icons.bar_chart,
                text: "Stats",
              ),
              const GButton(
                icon: Icons.account_circle,
                text: "Profile",
              )
            ],
          ),
        ),
      ),
    );
  }
}
