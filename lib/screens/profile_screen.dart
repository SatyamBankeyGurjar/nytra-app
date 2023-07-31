import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        centerTitle: true,
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_on_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Background container
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15 + 120,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: themeColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Foreground container
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 2),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  color: Color.fromARGB(255, 228, 226, 226))
                            ]),
                        child: Container(
                          padding: const EdgeInsets.only(top: 65),
                          child: const Column(
                            children: [
                              Text(
                                "Satyam Bankey",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "ITEG Diploma",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.room_outlined,
                                    color: themeColor,
                                    size: 18,
                                  ),
                                  Text("Harda",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Circle Avator (half inside and half outside the background container)
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.025,
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/satyam.jpg'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Padding for Header (Student Details)
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Student Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              // Container with border and rounded corners for Student Details
              Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: const Border(
                    top: BorderSide(color: bgtextColor),
                    right: BorderSide(color: bgtextColor),
                    left: BorderSide(color: bgtextColor),
                    bottom: BorderSide(color: bgtextColor),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    studentDetails("Email", "satyamb755@gmail.com"),
                    studentDetails("Upi ID", "9575702037@ybl"),
                    studentDetails("Phone Number", "9575702037"),
                    studentDetails("Date of birth", "30/10/2001"),
                    studentDetails("Father Name", "Sunil Bankey"),
                    studentDetails("Enrollment No.", "D30R073120220"),
                    studentDetails("Address", "Charkhera, Harda-461331"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget studentDetails(String title, desc) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            const Spacer(),
            Text(
              desc,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: bgtextColor),
            ),
          ],
        ),
      ),
    );
  }
}
