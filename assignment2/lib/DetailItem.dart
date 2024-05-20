import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detailitem extends StatefulWidget {
  const Detailitem({super.key});

  @override
  State<Detailitem> createState() => _DetailitemState();
}

class _DetailitemState extends State<Detailitem> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        title: Text(
          'Detail',
          style: TextStyle(fontFamily: 'SoraBold', fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Width * 0.04),
            child: ImageIcon(AssetImage('assets/icons/Heart.png')),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Height * 0.10,
        width: Width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(17),
            topRight: Radius.circular(17),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: Height * 0.01,
              left: Width * 0.07,
              right: Width * 0.07,
              bottom: Height * 0.01),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Height,
                  width: Width * 0.25,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 100, 100, 100),
                            fontFamily: 'SoraMedium'),
                      ),
                      Text(
                        '4.53',
                        style: TextStyle(
                            color: const Color(0xFFC67C4E),
                            fontSize: 20,
                            fontFamily: 'SoraBold'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Height,
                  width: Width * 0.55,
                  child: Container(
                    alignment: Alignment.center,
                    height: Height,
                    width: Width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFC67C4E),
                    ),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontFamily: 'SoraBold',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: Width * 0.07, right: Width * 0.07, top: Height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Height * 0.30,
                  width: Width * 0.90,
                  decoration: (BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle1708.png'),
                          fit: BoxFit.fill))),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Cappucino',
                  style: TextStyle(fontFamily: 'SoraBold', fontSize: 22),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'with Chocolate',
                  style: TextStyle(
                      fontFamily: 'SoraLight',
                      fontSize: 13,
                      color: const Color.fromARGB(255, 104, 104, 104)),
                ),
                SizedBox(height: 7),
                Container(
                  height: Height * 0.05,
                  width: Width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: Height * 0.05,
                          width: Width * 0.30,
                          color: Color(0xFFF9F9F9),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ImageIcon(
                                AssetImage('assets/icons/Vector.png'),
                                color: const Color.fromARGB(255, 255, 188, 5),
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontFamily: 'SoraBold', fontSize: 17),
                              ),
                              Text(
                                '(230)',
                                style: TextStyle(
                                    fontFamily: 'SoraMedium',
                                    fontSize: 14,
                                    color: const Color.fromARGB(
                                        255, 119, 119, 119)),
                              )
                            ],
                          )),
                      Container(
                        height: Height * 0.05,
                        width: Width * 0.30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: Height * 0.05,
                              width: Width * 0.11,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color.fromARGB(
                                        255, 235, 237, 254)),
                                child: ImageIcon(
                                  AssetImage('assets/icons/bean.png'),
                                  color: Color(0xFFC67C4E),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Height * 0.05,
                              width: Width * 0.11,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color.fromARGB(
                                        255, 235, 237, 254)),
                                child: ImageIcon(
                                  AssetImage('assets/icons/milk.png'),
                                  color: Color(0xFFC67C4E),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
                Text(
                  'Description',
                  style: TextStyle(fontFamily: 'SoraBold', fontSize: 17),
                ),
                SizedBox(height: 15),
                Container(
                  height: Height * 0.075,
                  width: Width * 0.90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/font.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Size',
                  style: TextStyle(fontFamily: 'SoraBold', fontSize: 17),
                ),
                SizedBox(height: 15),
                Container(
                  height: Height * 0.063,
                  width: Width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeContainer(
                        Height: Height,
                        Width: Width,
                        text1: 'S',
                      ),
                      SizeContainer(
                        Height: Height,
                        Width: Width,
                        text1: 'M',
                      ),
                      SizeContainer(
                        Height: Height,
                        Width: Width,
                        text1: 'L',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  SizeContainer(
      {super.key,
      required this.Height,
      required this.Width,
      required this.text1});

  final double Height;
  final double Width;
  String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Height * 0.063,
      width: Width * 0.27,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(255, 171, 171, 171))),
      alignment: Alignment.center,
      child: Text(
        text1,
        style: TextStyle(fontSize: 15, fontFamily: 'SoraMedium'),
      ),
    );
  }
}
