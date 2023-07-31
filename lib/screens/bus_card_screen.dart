import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';
import '../widgets/month_grids.dart';

class BusCardScreen extends StatefulWidget {
  BusCardScreen({super.key});

  @override
  State<BusCardScreen> createState() => _BusCardScreenState();
}

class _BusCardScreenState extends State<BusCardScreen> {
  // late TabController tabController;
  int _currentTab = 0;
  // var textColor;
  List<Widget> grids = MonthGrids.generateGrids();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text(
            "Bus Card",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(8.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    // color: bgtextColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tabButton(0),
                      tabButton(1),
                      tabButton(2),
                    ],
                  )),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: themeColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: themeColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          "Bus Card",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Image.asset("assets/images/busStop.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Text("Month"),
                              ),
                              Image.asset("assets/images/completedGreen.png")
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: grids,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget tabButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentTab = index;
          // textColor = Colors.white;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(5.0),
        width: 80,
        height: 30,
        decoration: BoxDecoration(
            color: _currentTab == index ? themeColor : Colors.white,
            borderRadius: BorderRadius.circular(5.0)),
        child: Center(
          child: Text(
            "${index + 1} year",
            style: const TextStyle(
                // color: selectedtextColor,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
