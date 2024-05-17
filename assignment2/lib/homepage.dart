import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textController = TextEditingController();
  List<String> coffeeTypes = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];
  List<Color> coffeeColors = List.generate(4, (index) => Colors.white);
  int selectedIndex = -1;
  int _selectedPageIndex = 0;

  void toggleSelectedIndex(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1;
      } else {
        selectedIndex = index;
      }
    });
  }
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9) ,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFFC67C4E),
          unselectedItemColor: const Color.fromARGB(255, 81, 81, 81),
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/Home.png')),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/Heart.png')),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/Bag.png')), label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/Notification.png')),
                label: ''),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: Height * 0.35,
                  width: Width,
                  color: const Color.fromARGB(255, 39, 39, 39)),
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
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Height * 0.03,
                    left: Width * 0.07,
                    right: Width * 0.07),
                child: Container(
                  height: Height * 0.06,
                  width: Width * 0.85,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeTypes.length,
                    separatorBuilder: (context, index) => SizedBox(
                      width: Width * 0.03,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            toggleSelectedIndex(index);
                          });
                        },
                        child: Container(
                          height: Height * 0.06,
                          width: Width * 0.30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedIndex == index
                                ? Color(0xFFC67C4E)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              coffeeTypes[index],
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : const Color.fromARGB(255, 58, 58, 58),
                                fontFamily: 'SoraMedium',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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
