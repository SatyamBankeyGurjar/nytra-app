import 'package:flutter/material.dart';
import 'package:nytra_ui/screens/leave_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/satyam.jpg'),
            // radius: 15,
          ),
        ),
        title: const Text(
          'Hey Student!',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.message_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ssismImage.png',
                    height: constraints.maxHeight * 0.3,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gridContainer("assets/images/leaveGridImage.png"),
                      gridContainer("assets/images/attendenceGridImage.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gridContainer("assets/images/timetableGridImage.png"),
                      gridContainer("assets/images/buscardGridImage.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gridContainer("assets/images/leaveGridImage.png"),
                      gridContainer("assets/images/leaveGridImage.png"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget gridContainer(String img) {
    return InkWell(
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Image.asset(img),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LeaveScreen()));
      },
    );
  }
}
