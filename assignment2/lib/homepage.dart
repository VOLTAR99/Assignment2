import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: Height * 0.35,
                  width: Width,
                  color: const Color.fromARGB(255, 39, 39, 39)),
              Container(
                height: Height * 0.65,
                width: Width,
                color: Colors.white,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Height * 0.07,
                    left: Width * 0.07,
                    right: Width * 0.07),
                child: Container(
                  height: Height * 0.08,
                  width: Width * 0.80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                fontFamily: 'SoraLight',
                                color:
                                    const Color.fromARGB(130, 255, 255, 255)),
                          ),
                          Container(
                            height: Height * 0.03,
                            width: Width * 0.50,
                            child: Row(
                              children: [
                                Text(
                                  'Mohali, Punjab',
                                  style: TextStyle(
                                      fontFamily: 'SoraMedium',
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                InkWell(
                                  child: ImageIcon(
                                    AssetImage('assets/icons/ArrowDown.png'),
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onTap: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: Width * 0.08, right: Width * 0.08),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 56, 56, 56),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: const Color.fromARGB(255, 56, 56, 56),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: const Color.fromARGB(255, 56, 56, 56),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 5),
                      child: ImageIcon(
                        AssetImage('assets/icons/search-normal.png'),
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Search coffee',
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 132, 132, 132),
                        fontFamily: 'SoraRegular'),
                    suffixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 5),
                      child: SizedBox(
                        height: 40,
                        width: 45,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFC67C4E)),
                          child: IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage('assets/icons/furnitur-icon.png'),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Height * 0.03,
                    left: Width * 0.07,
                    right: Width * 0.07),
                child: Container(
                  height: Height * 0.19,
                  width: Width * 0.84,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/image8.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 27,
                          width: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xFFED5151),
                            ),
                            child: Text(
                              'Promo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SoraMedium',
                                  fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Text(
                          'Buy one get',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SoraBold',
                              wordSpacing: 3,
                              letterSpacing: 1,
                              fontSize: 27,
                              backgroundColor: Colors.black),
                        ),
                        Text(
                          'one FREE',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SoraBold',
                              fontSize: 27,
                              wordSpacing: 3,
                              letterSpacing: 1,
                              backgroundColor: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
