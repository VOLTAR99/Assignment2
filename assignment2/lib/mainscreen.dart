import 'package:assignment2/homepage.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: Height * 0.65,
            width: Width,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Height * 0.57, left: Width * 0.05, right: Width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Coffee so good,\nyour taste buds\nwill love it',
                  style: TextStyle(
                      fontFamily: 'SoraMedium',
                      color: Colors.white,
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'The best grain, the finest roast, the\npowerful flavor.',
                  style: TextStyle(
                    color: const Color.fromARGB(166, 255, 255, 255),
                    fontFamily: 'SoraLight',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size( 0, Height * 0.08),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: const Color(0xFFC67C4E)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
