import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';
import 'package:url_launcher/url_launcher.dart';

class LeaveScreen extends StatelessWidget {
   LeaveScreen({super.key});

// currently not working...........!
  void _composeEmail() async {
    final Uri params = Uri(
      scheme: 'mail to',
      path: 'example@ssism.org',
      query: 'subject=Hello%20World',
    );
    // final String emailUri = params.toString();

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not Launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text(
            "Leave",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          bottom: const TabBar(
              labelColor: themeColor,
              indicatorColor: themeColor,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Approved',
                ),
                Tab(
                  text: 'Cancelled',
                ),
              ]),
        ),
        body: const TabBarView(children: []),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _composeEmail();
          },
          icon: const Icon(Icons.email),
          label: const Text('Compose'),
        ),
      ),
    );
  }
}
